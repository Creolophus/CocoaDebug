//
//  Example
//  man.li
//
//  Created by man.li on 11/11/2018.
//  Copyright © 2020 man.li. All rights reserved.
//

#if !defined(_GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/_GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "_GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if _GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/Api.pbobjc.h>
 #import <protobuf/SourceContext.pbobjc.h>
 #import <protobuf/Type.pbobjc.h>
#else
 #import "_Api.pbobjc.h"
 #import "_SourceContext.pbobjc.h"
 #import "_Type.pbobjc.h"
#endif
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - _GPBApiRoot

@implementation _GPBApiRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - _GPBApiRoot_FileDescriptor

static _GPBFileDescriptor *_GPBApiRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static _GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    _GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[_GPBFileDescriptor alloc] initWithPackage:@"google.protobuf"
                                                 objcPrefix:@"_GPB"
                                                     syntax:_GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - _GPBApi

@implementation _GPBApi

@dynamic name;
@dynamic methodsArray, methodsArray_Count;
@dynamic optionsArray, optionsArray_Count;
@dynamic version;
@dynamic hasSourceContext, sourceContext;
@dynamic mixinsArray, mixinsArray_Count;
@dynamic syntax;

typedef struct _GPBApi__storage_ {
  uint32_t _has_storage_[1];
  _GPBSyntax syntax;
  NSString *name;
  NSMutableArray *methodsArray;
  NSMutableArray *optionsArray;
  NSString *version;
  _GPBSourceContext *sourceContext;
  NSMutableArray *mixinsArray;
} _GPBApi__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = _GPBApi_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, name),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "methodsArray",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBMethod),
        .number = _GPBApi_FieldNumber_MethodsArray,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, methodsArray),
        .flags = _GPBFieldRepeated,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBOption),
        .number = _GPBApi_FieldNumber_OptionsArray,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, optionsArray),
        .flags = _GPBFieldRepeated,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "version",
        .dataTypeSpecific.className = NULL,
        .number = _GPBApi_FieldNumber_Version,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, version),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "sourceContext",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBSourceContext),
        .number = _GPBApi_FieldNumber_SourceContext,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, sourceContext),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "mixinsArray",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBMixin),
        .number = _GPBApi_FieldNumber_MixinsArray,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, mixinsArray),
        .flags = _GPBFieldRepeated,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "syntax",
        .dataTypeSpecific.enumDescFunc = _GPBSyntax_EnumDescriptor,
        .number = _GPBApi_FieldNumber_Syntax,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(_GPBApi__storage_, syntax),
        .flags = (_GPBFieldFlags)(_GPBFieldOptional | _GPBFieldHasEnumDescriptor),
        .dataType = _GPBDataTypeEnum,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBApi class]
                                     rootClass:[_GPBApiRoot class]
                                          file:_GPBApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBApi__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t _GPBApi_Syntax_RawValue(_GPBApi *message) {
  _GPBDescriptor *descriptor = [_GPBApi descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBApi_FieldNumber_Syntax];
  return _GPBGetMessageInt32Field(message, field);
}

void Set_GPBApi_Syntax_RawValue(_GPBApi *message, int32_t value) {
  _GPBDescriptor *descriptor = [_GPBApi descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBApi_FieldNumber_Syntax];
  _GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - _GPBMethod

@implementation _GPBMethod

@dynamic name;
@dynamic requestTypeURL;
@dynamic requestStreaming;
@dynamic responseTypeURL;
@dynamic responseStreaming;
@dynamic optionsArray, optionsArray_Count;
@dynamic syntax;

typedef struct _GPBMethod__storage_ {
  uint32_t _has_storage_[1];
  _GPBSyntax syntax;
  NSString *name;
  NSString *requestTypeURL;
  NSString *responseTypeURL;
  NSMutableArray *optionsArray;
} _GPBMethod__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMethod_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(_GPBMethod__storage_, name),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "requestTypeURL",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMethod_FieldNumber_RequestTypeURL,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(_GPBMethod__storage_, requestTypeURL),
        .flags = (_GPBFieldFlags)(_GPBFieldOptional | _GPBFieldTextFormatNameCustom),
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "requestStreaming",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMethod_FieldNumber_RequestStreaming,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeBool,
      },
      {
        .name = "responseTypeURL",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMethod_FieldNumber_ResponseTypeURL,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(_GPBMethod__storage_, responseTypeURL),
        .flags = (_GPBFieldFlags)(_GPBFieldOptional | _GPBFieldTextFormatNameCustom),
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "responseStreaming",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMethod_FieldNumber_ResponseStreaming,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeBool,
      },
      {
        .name = "optionsArray",
        .dataTypeSpecific.className = _GPBStringifySymbol(_GPBOption),
        .number = _GPBMethod_FieldNumber_OptionsArray,
        .hasIndex = _GPBNoHasBit,
        .offset = (uint32_t)offsetof(_GPBMethod__storage_, optionsArray),
        .flags = _GPBFieldRepeated,
        .dataType = _GPBDataTypeMessage,
      },
      {
        .name = "syntax",
        .dataTypeSpecific.enumDescFunc = _GPBSyntax_EnumDescriptor,
        .number = _GPBMethod_FieldNumber_Syntax,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(_GPBMethod__storage_, syntax),
        .flags = (_GPBFieldFlags)(_GPBFieldOptional | _GPBFieldHasEnumDescriptor),
        .dataType = _GPBDataTypeEnum,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBMethod class]
                                     rootClass:[_GPBApiRoot class]
                                          file:_GPBApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBMethod__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
#if !_GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\002\007\244\241!!\000\004\010\244\241!!\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !_GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t _GPBMethod_Syntax_RawValue(_GPBMethod *message) {
  _GPBDescriptor *descriptor = [_GPBMethod descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBMethod_FieldNumber_Syntax];
  return _GPBGetMessageInt32Field(message, field);
}

void Set_GPBMethod_Syntax_RawValue(_GPBMethod *message, int32_t value) {
  _GPBDescriptor *descriptor = [_GPBMethod descriptor];
  _GPBFieldDescriptor *field = [descriptor fieldWithNumber:_GPBMethod_FieldNumber_Syntax];
  _GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - _GPBMixin

@implementation _GPBMixin

@dynamic name;
@dynamic root;

typedef struct _GPBMixin__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSString *root;
} _GPBMixin__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (_GPBDescriptor *)descriptor {
  static _GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static _GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMixin_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(_GPBMixin__storage_, name),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
      {
        .name = "root",
        .dataTypeSpecific.className = NULL,
        .number = _GPBMixin_FieldNumber_Root,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(_GPBMixin__storage_, root),
        .flags = _GPBFieldOptional,
        .dataType = _GPBDataTypeString,
      },
    };
    _GPBDescriptor *localDescriptor =
        [_GPBDescriptor allocDescriptorForClass:[_GPBMixin class]
                                     rootClass:[_GPBApiRoot class]
                                          file:_GPBApiRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(_GPBMessageFieldDescription))
                                   storageSize:sizeof(_GPBMixin__storage_)
                                         flags:_GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
