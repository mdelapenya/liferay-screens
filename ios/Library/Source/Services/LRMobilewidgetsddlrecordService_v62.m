/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "LRMobilewidgetsddlrecordService_v62.h"

/**
 * @author Bruno Farache
 */
@implementation LRMobilewidgetsddlrecordService_v62

- (NSDictionary *)getDdlRecordWithDdlRecordId:(long long)ddlRecordId locale:(NSString *)locale error:(NSError **)error {
	NSMutableDictionary *_params = [NSMutableDictionary dictionaryWithDictionary:@{
		@"ddlRecordId": @(ddlRecordId),
		@"locale": locale
	}];

	NSDictionary *_command = @{@"/mobile-widgets-web/mobilewidgetsddlrecord/get-ddl-record": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getDdlRecordsWithDdlRecordSetId:(long long)ddlRecordSetId locale:(NSString *)locale start:(int)start end:(int)end error:(NSError **)error {
	NSMutableDictionary *_params = [NSMutableDictionary dictionaryWithDictionary:@{
		@"ddlRecordSetId": @(ddlRecordSetId),
		@"locale": locale,
		@"start": @(start),
		@"end": @(end)
	}];

	NSDictionary *_command = @{@"/mobile-widgets-web/mobilewidgetsddlrecord/get-ddl-records": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getDdlRecordsWithDdlRecordSetId:(long long)ddlRecordSetId userId:(long long)userId locale:(NSString *)locale start:(int)start end:(int)end error:(NSError **)error {
	NSMutableDictionary *_params = [NSMutableDictionary dictionaryWithDictionary:@{
		@"ddlRecordSetId": @(ddlRecordSetId),
		@"userId": @(userId),
		@"locale": locale,
		@"start": @(start),
		@"end": @(end)
	}];

	NSDictionary *_command = @{@"/mobile-widgets-web/mobilewidgetsddlrecord/get-ddl-records": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSNumber *)getDdlRecordsCountWithDdlRecordSetId:(long long)ddlRecordSetId error:(NSError **)error {
	NSMutableDictionary *_params = [NSMutableDictionary dictionaryWithDictionary:@{
		@"ddlRecordSetId": @(ddlRecordSetId)
	}];

	NSDictionary *_command = @{@"/mobile-widgets-web/mobilewidgetsddlrecord/get-ddl-records-count": _params};

	return (NSNumber *)[self.session invoke:_command error:error];
}

- (NSNumber *)getDdlRecordsCountWithDdlRecordSetId:(long long)ddlRecordSetId userId:(long long)userId error:(NSError **)error {
	NSMutableDictionary *_params = [NSMutableDictionary dictionaryWithDictionary:@{
		@"ddlRecordSetId": @(ddlRecordSetId),
		@"userId": @(userId)
	}];

	NSDictionary *_command = @{@"/mobile-widgets-web/mobilewidgetsddlrecord/get-ddl-records-count": _params};

	return (NSNumber *)[self.session invoke:_command error:error];
}

@end