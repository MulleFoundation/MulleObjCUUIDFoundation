#import <MulleObjCUUIDFoundation/MulleObjCUUIDFoundation.h>


int   main( int argc, char *argv[])
{
   static unsigned char   bytes[ MulleUUIDBytesLength];
   NSUUID                 *uuid;

   memset( bytes, 0, sizeof( MulleUUIDBytesLength));
   uuid = [[[NSUUID alloc] initWithUUIDBytes:bytes] autorelease];
   printf( "%s\n", [uuid UTF8String]);
   [uuid getUUIDBytes:bytes];

   uuid = [[[NSUUID alloc] initWithUUIDBytes:bytes] autorelease];
   printf( "%s\n", [uuid UTF8String]);

   return( 0);
}


/*
 * extension : mulle-sde/objc-test-library-demo
 * directory : demo/all
 * template  : .../noleak.m
 * Suppress this comment with `export MULLE_SDE_GENERATE_FILE_COMMENTS=NO`
 */
