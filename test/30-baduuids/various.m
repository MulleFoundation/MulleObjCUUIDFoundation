#import <MulleObjCUUIDFoundation/MulleObjCUUIDFoundation.h>

static char   *uuids[] =
{
   "1f2e3d4c-5b6a-4988-97a6-b5c4d3e2f17f",  // ok
   "1f2e3d4c-5b6a-5988-97a6-b5c4d3e2f17f",  // wrong version
   "1f2e3d4c-5b6a-4988-c7a6-b5c4d3e2f17f",  // wrong variant 3
   "1f2e3d4c-5b6a-4988-17a6-b5c4d3e2f17f",  // wrong variant 0
   "1f2e3d4c-5b6a-4988-47a6-b5c4d3e2f17f",  // wrong variant 1
   "1f2e3d4c-5b6a-4988-87a6-b5c4d3e2f17f",  // ok variant 2
   NULL
};


int   main( int argc, char *argv[])
{
   NSUUID   *uuid;
   char     **p;

   for( p = uuids; *p; p++)
   {
      uuid = [[[NSUUID alloc] initWithUUIDString:@( *p)] autorelease];

      mulle_printf( "%s (version: %u variant: %u)", *p,
                  MulleUTF8StringGetUUIDVersion( *p),
                  MulleUTF8StringGetUUIDVariant( *p));
      if( uuid)
         mulle_printf( " accepted as %@\n", uuid);
      else
         mulle_printf( " not accepted\n");
   }

   return( 0);
}


/*
 * extension : mulle-sde/objc-test-library-demo
 * directory : demo/all
 * template  : .../noleak.m
 * Suppress this comment with `export MULLE_SDE_GENERATE_FILE_COMMENTS=NO`
 */
