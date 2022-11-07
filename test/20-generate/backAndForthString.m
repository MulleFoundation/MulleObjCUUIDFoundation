#import <MulleObjCUUIDFoundation/MulleObjCUUIDFoundation.h>


int   main( int argc, char *argv[])
{
   static unsigned char   bytes[ MulleUUIDBytesLength];
   NSUUID                 *uuid;
   NSString               *s;

   memset( bytes, 0, sizeof( MulleUUIDBytesLength));
   uuid = [[[NSUUID alloc] initWithUUIDBytes:bytes] autorelease];
   s    = [uuid UUIDString];
   mulle_printf( "%@\n", s);

   uuid = [[[NSUUID alloc] initWithUUIDString:s] autorelease];
   s    = [uuid UUIDString];
   mulle_printf( "%@\n", s);

   bytes[ 0] = 0x1F;
   bytes[ 1] = 0x2E;
   bytes[ 2] = 0x3D;
   bytes[ 3] = 0x4C;
   bytes[ 4] = 0x5B;
   bytes[ 5] = 0x6A;
   bytes[ 6] = 0x79;
   bytes[ 7] = 0x88;
   bytes[ 8] = 0x97;
   bytes[ 9] = 0xA6;
   bytes[10] = 0xB5;
   bytes[11] = 0xC4;
   bytes[12] = 0xD3;
   bytes[13] = 0xE2;
   bytes[14] = 0xF1;
   bytes[15] = 0x7F;

   MulleUUIDBytesZeroVersioningBits( bytes);
   uuid = [[[NSUUID alloc] initWithUUIDBytes:bytes] autorelease];
   s    = [uuid UUIDString];
   mulle_printf( "%@\n", s);

   uuid = [[[NSUUID alloc] initWithUUIDString:s] autorelease];
   s    = [uuid UUIDString];
   mulle_printf( "%@\n", s);

   return( 0);
}


/*
 * extension : mulle-sde/objc-test-library-demo
 * directory : demo/all
 * template  : .../noleak.m
 * Suppress this comment with `export MULLE_SDE_GENERATE_FILE_COMMENTS=NO`
 */
