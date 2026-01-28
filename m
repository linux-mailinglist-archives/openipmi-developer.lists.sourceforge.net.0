Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8K1+LpSOeml+7wEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Jan 2026 23:32:52 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 384EBA991F
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Jan 2026 23:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GlVs1Bmr0MzxvqaIjhennS5q/GraHMQfF9C41/3eJyI=; b=eniSdBh7YMsnjQIKvqfmxr+GXp
	YIsgUzufL8PSAw/wkP61z0hVLy6D/tfUMaEnCwU2Zgyd39ssdLA9Frr2ZRSHXLC+YkUWbTmbU0JDo
	c3AxEWlWy0ozCfhst2eqEAf4+0p04yxRg+PxCiWjJQxgSwRAXuSxdzYE9VjpXmY9V8sg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vlE5X-0000yk-IA;
	Wed, 28 Jan 2026 22:32:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=348899f455=hutter2@llnl.gov>)
 id 1vlE5W-0000ye-7g for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Jan 2026 22:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Cc:To:Subject:From:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=; b=Wk7H5cBSH/HeczASGjL3t7SDxx
 1YwRo+5dVQnTglXxM8ZA6NOKv9QvLNOhHygnM1dXIQ1FahxbS8p8ZVyKXm9kVVAbjT5XH6pYLU6WN
 laVOwwwKoymnI5z2+CCrzLilk1PweVyhiOCaGt2z1X7WRTYecqPxbUh2HWYGD2Ng1UQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Cc:To:Subject:From:
 Date:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=; b=E
 BVRCXMl+x4ogmt66uG/TvcW28c8JuvzfuNHN2EhEGtlx1RP/BfN/fmSCuOMBP5m7Rq9Ox3v49jbkj
 ARDsbqRWFLNsObQeSwZh3djgkRK3KshdS9gpQgMGYUAzQtjZVIY7Erfx+u07ddQ8/IH8OgKaEPlqZ
 dKQIJ1wWNJFE31aI=;
Received: from mx0f-00379502.gpphosted.com ([67.231.155.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vlE5U-0005fX-EN for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Jan 2026 22:32:38 +0000
Received: from pps.filterd (m0422210.ppops.net [127.0.0.1])
 by mx0f-00379502.gpphosted.com (8.18.1.2/8.18.1.2) with ESMTP id
 60SKA4Ca016745; Wed, 28 Jan 2026 13:49:11 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=llnl.gov;
 h=message-id : date :
 from : subject : to : cc : content-type : content-transfer-encoding :
 mime-version; s=02022021-podllnl;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=;
 b=wQg2Vj2zW9KrSDzuMimk0ohSpUzFHe629Bi+Xr5CuuHl8hWg7ABpsqs7Bdo9pQ+6BV6M
 tEobn71ZleW0p3rx18xtCDuouR5nhIEoh0NNjgXzgG/0ZwCpQt5ajX9P4JQ6iRVzDnIj
 riwPTTPK5ZP3Yp6rW1VN5iyYHx6TjJ6D+l/9vvPtMK7mF2WmOdT3TL4LZX3mB5pfzovp
 nsw0Ew39t4VIxJnhhpxn6/tR+Zse0MQnMyNRJYbgLJTvL+LONFQxt7wrnYm5NHhEjFY9
 AfmC69L1AiQuVpan9x6xw++HlBSNGB82XkFEs1jb4GjRniSKOnEAZHJhXS3/SS89aD8t Bw== 
Received: from bn8pr09cu001.outbound.protection.outlook.com
 (mail-eastus2azon11012019.outbound.protection.outlook.com [52.101.58.19])
 by mx0f-00379502.gpphosted.com (PPS) with ESMTPS id 4bys8g06u7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 28 Jan 2026 13:49:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y78N9lygK3E9+V44ATfr3pBXwwmPYroDZRGwjWB79r+XFS5EpMb1Dtz7xvzKBItwMa2HN9QD75kOJ2uh7aCNvwCYv9CxHLAiTaTxkOuCNGst1E8Z78pyOvwwGUrOsYlCAOBjRrbH0XYM19ZNuMMKNC2+bmoiB9FNNp4koU6tMb9kenBA5NDgLpcbJPt578PzAM2PBGygfg9GT1HrIJFhvYFD7Gx5/9gytbXdaG7u4sCag4v6jyQY71VWnIHAqZoZxh7QUxCEmqPj1eratmlFX7BR6l+VM23Pq9lEg+yp0u7gQr0veszwIAUwwsXFjb4yqpMKUO+cwj2WTdRk4ZxFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=;
 b=O3Akvs4Fk5ugQpJ/4L0wuOuklPXsCFNHG17HynH0EaaPJm/Q8SEi0maFS0baVD1DmX0rFBQVG9kOOsdE6KbXpX9CHoctBQTgi6vdi3Hr4EjFhJIXLxuW/lytGrHF9KXRkY1tzEdAThIYjV/EStE0/9Az1q42wx2yaHjYR2OOhJqEp2eYZ1DYTBK34maneCY2t733wwGRhK1uJ6xgjuRrbQ56ilOgSh8IWwBIy3POtR5X9NMRbqq+kCdiFcWtPWzm7Z6QlpPH7qkAGgGkGHK9AZonfCC4+NEojgO/KQgW6uPIhVmgfhNcK05UtpapihPtFyERjx+wfiNOd2Lh6CMXoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=llnl.gov; dmarc=pass action=none header.from=llnl.gov;
 dkim=pass header.d=llnl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=doellnl.onmicrosoft.com; s=selector1-doellnl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yo12AYQLxcUe8+8I/YsR/5ii4LkhqWYwvuoFYRSWG1k=;
 b=DqbMAe376DOTWfBZQ/YPjRajivwUVzjbW+sqUr4/9wTBsC1HKMvqKWdDkj33ghsDD1fxXc/bhA8I0LZkL5oRUQu8JH1O8naqQsAAOurw71+DSisJGgx6A/1mE6Gw8aJZ44KFlV0vSAO86YUyqYXyXC+yBH9dHiNWwGNIdpO41Pc=
Received: from SA1PR09MB11481.namprd09.prod.outlook.com (2603:10b6:806:372::6)
 by SJ0PR09MB9768.namprd09.prod.outlook.com (2603:10b6:a03:460::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 21:49:07 +0000
Received: from SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e]) by SA1PR09MB11481.namprd09.prod.outlook.com
 ([fe80::e01e:c29e:b1a4:697e%4]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 21:49:06 +0000
Message-ID: <47a05e84-6aad-40b8-b576-eb80d27e3c80@llnl.gov>
Date: Wed, 28 Jan 2026 13:49:05 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lukas Wunner <lukas@wunner.de>, Bjorn Helgaas <helgaas@kernel.org>
X-ClientProxiedBy: BY5PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::18) To SA1PR09MB11481.namprd09.prod.outlook.com
 (2603:10b6:806:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR09MB11481:EE_|SJ0PR09MB9768:EE_
X-MS-Office365-Filtering-Correlation-Id: 0445a9f8-46fe-489c-92cb-08de5eb70f83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTV3UWtmeWdONWgzSUFGRHhOYUFCQmR1TVp3dzMzQ2t6TW40T0k0d2wwc0xP?=
 =?utf-8?B?bHgvWGZQSEJ5WlFld0Zob2tEeTRId0RndzVqWnl5QkVVZ0craFRKa20xUzBz?=
 =?utf-8?B?TkV4QW9uS2JjNWJlZ0lWWUsxODA5RjREWVRTaDhJb09YallFa0swQjBRV3li?=
 =?utf-8?B?SGJ0WWdRanNYN0FQWmNpZnF5eUFrekJYNWhweWRTZ3pxb1g4MkpDaWczYkVm?=
 =?utf-8?B?VnliRExkRWxJa3FwNXR0bWl6Y2J6TWUvY3l3eTRSMzNyMWwwWWpMbXdWa3Mw?=
 =?utf-8?B?Z0hwQVlhVCsyMnViSEU1QVd0N1dlTVExZlNaY0lreFJFV3Ixd3ZtM1AxUS9D?=
 =?utf-8?B?ejV5VTgvYXlxcFZibVlMeTVxazFsRUVURXdxNWl4eVRzVjNXSTQzRlY2SzhU?=
 =?utf-8?B?bk5waVBmYjl6VnBkcFEydjlJa1FSRUtQUUVtM1RmdUJyWVdYSldwQzlQcjJp?=
 =?utf-8?B?ci9TcWU5U3BkL2psRzNSbXk3Vm1RZWZmSWVGN1lHaHFienpFT0YvSW1JQTdu?=
 =?utf-8?B?NnJWcnhoQ1ZZMEsycGRBQjlHb0JnektZSXJvd0NRNWhHa1lCOXRnNFRFL3Ew?=
 =?utf-8?B?SGpWMk1vU0lpMDJpcmxVMDFHVDQwU3pZanVFOXlGU2QrR2J4UDgzeHlqKzNI?=
 =?utf-8?B?VzhWTE55TkhoYndyQ3lDS0JJcXZjOUc2TC9NYUgreC9PdFpYd3crSjRBL0VW?=
 =?utf-8?B?WUhwcHhGeTRNWlNMSDEvWlNDYVpkMjVPNlA4ditvRWRWWi81QnQza0lMdndJ?=
 =?utf-8?B?K08xL0xhM3ZoOUpISnRPMHZCMzk3NTdISVo3SHBWczJjbW5jWUVBZXpYM2NU?=
 =?utf-8?B?NGhmYlYrWTVDakdsNi8ya2dwS1c2Rm5MYU5pMlhSODc3U005aFJUUjFvQUw1?=
 =?utf-8?B?S0hwK0RNeTlPRFBtUWdpTVI1T0tlN3Z4ZDFYTFBQdmNqM3VWelpzd25oeUZ0?=
 =?utf-8?B?TVVIUE92ektPKytNRVhnWENIWGljTmVsd0pPbUgrZTBWUW5TQWM4NFliQUk1?=
 =?utf-8?B?ODRPUVlLdHRsSUJvUjNJMkRnY1FDeDBqVDY1YTEzbzhVL1lNeWpwWFU4K1RI?=
 =?utf-8?B?V3AwOWZXNXNYWUdQN05wb1ZCNFRXb1NkK2hUenl5MUYwT3BKT0h3SW1MTy94?=
 =?utf-8?B?Nm1OaDR4ZnNyeFdsV0lUdmZWZEFIV0JvN1pJb2t5WGdjTUFGSk16L05sU2pt?=
 =?utf-8?B?VHlaazB2bk92NHRvMjRCK3pyUVBtV2F5T1UrVDl5TDhrWXZVc0FhNnlZMXUx?=
 =?utf-8?B?NTdxVDNhVGI4VnFvVW5KQ01GSGVoOUh2bHBIeDlMMUJLU05qWVhWeG1BVmkx?=
 =?utf-8?B?NGlRbkNXVjltTXlEV281dnFTMlJ3QVNhVkl2OVVKWXQ2WGN5b2R3MDd1MUJ1?=
 =?utf-8?B?TGtEUnBieDY2a1Z6RTdpNmgySXR2eE1za1puNWJBMVluRkg4VzhTZ3hQN0lm?=
 =?utf-8?B?S1pIVHlMbzMzZGFtL011UmlScnZuODBCNFBQOHhlc0ZOK0dJaFIvTHc1RDM2?=
 =?utf-8?B?VStlR0NoOFdoc25QczhHaTRIYTJKQmlLY3RzNjd1Qy9yWTdJOXhjZFlvOEZa?=
 =?utf-8?B?MHp0eEo5S1BaeFlkMXNacW9RdlVBTVBXN3VzSFZKWDRUa1Zna0VCaEc1Tits?=
 =?utf-8?B?NWEwU3I5N2syWThjRGZwUmRSRFlTcXBZWVFzdGk0K1RjaDVXKzYwOXpXL2Z4?=
 =?utf-8?B?eHhKS3h2d0lXNUZwOXp1bXh5aGdZaVNleHRpTVlXeWJjdDJHSkJLYmkwbGJ2?=
 =?utf-8?B?OUJXWXVwbWJLbTZ1TU9nWjZpSkxzWW9UeVBXQ0tIbEdMQmpmdXZHaVhHUDMz?=
 =?utf-8?B?N0trZlVJR3dSaXB1TDZINStXSWlGVnNXZ0dIUFlqMWNqaS80WkxsOXRMZG0w?=
 =?utf-8?B?eHJkMldFREVBUncwVDZ5dE9SaXBKVDNadjN1ZUZFWDFQeG5wZTRFNmozT2Rz?=
 =?utf-8?B?QUdBYUZGVlRickMvNmdZTXJtT0RlazY4ajVPdFROUHdaWGVBYVJQNVdJNU9O?=
 =?utf-8?B?SkRSL2dGRC9hcnFZWjEwSU9PVjczdmtwb0lIaVlJMjFYcEF4Wm5iekIrY3lp?=
 =?utf-8?B?L09KWHlIZ2dnOEhTTWNwOEJSNThrd2t5Q0EvUFpnTXRzYlc5N2tpMFpBRzFy?=
 =?utf-8?Q?TAJU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR09MB11481.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(19092799006)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3hFUmhzTXd3QjRSVklWTDI0NDVqSUE5NzF6L0tZUVlCekJWMnh2TEZ4RUVs?=
 =?utf-8?B?TVMvMDVxb2R5MzJMRmxzVnV0UE41eXpqTE4yYTdKRkVDSU5RWUpycUZXYXlN?=
 =?utf-8?B?Ukgzb0dwZW9zQ251MStMelo0QVJaaWVvckxFNjN4eTNOQ3plTG1oUVo4ek5J?=
 =?utf-8?B?VTFzTDMwVDVWRVRST0w0T2NCQ2FDM1lDT3EzelJwd1ZWK0ZVditSeThjemJC?=
 =?utf-8?B?Rzl5cldySFpyZGpBbk1xQnZTMkd0YklQYi9icGJ1djVUcndYY1FqNXlieVVn?=
 =?utf-8?B?b2VMTFh1RGQ3MFNpQ3RrdGNvRUNyamIyZWV0WWFUQmNkdHRMQkQxTFV5S2Ro?=
 =?utf-8?B?RUxTdmg0WkNjbFRqYzJuTEpmaTRaQm5tMUttZWgxUVhub3VDOXpEckx2NUdy?=
 =?utf-8?B?Vm1za1JtRFZYc3JHZ3RraXo1bDcxKzFZSG40Y1ZJNWF4NUxXYmJMZEtUN1p1?=
 =?utf-8?B?K2tGR1JOSTF4eTNFRjJ5bWJ5bWF6dGV4WGFFYXdPQllIcjBHRmNnWXhaWjIv?=
 =?utf-8?B?Q3M0blgwRWpVcWxDWHEzU0xuNEE5NnpMRERhZDl3aE85Ry9lR0poZVpMOTJB?=
 =?utf-8?B?enBOczMyc3phRFJLNkJYRnNNc1pqaE5KNHNueTFLcVdFaWdCVms5dndnR1lm?=
 =?utf-8?B?ZkpjUDJpRzMyLzJSOVBRVGVCYUw5Mk9sK1FLdmlqM3FTb2t1bUZxSmw3NXR5?=
 =?utf-8?B?dm5QUWtlWXhxbER0bGNpV2tuc2l3WnJyc3o1K0tRR0JjbmZPb1FMdHJRRkdl?=
 =?utf-8?B?N1k1Rmk2RUhwZlJDQlQ2b0dsdDIrbWNTV1VWdnRrZEljZHhpemRsTTljYzhQ?=
 =?utf-8?B?UWhmdnBEdDFUVEFZTFNJNERMeWRUYTZmMGR0cHlrQzBmcDlIZzZGTGhLQWNj?=
 =?utf-8?B?aXJWQ1UrQitWZURNYXBGcGRwMEdFWmQ2UThTS2ViMWVzSUdhcmlDWitweUln?=
 =?utf-8?B?RTROYnp3SElGczQxWUI3VWlWYzNJT0ZDaWRBdjNkR3c2RG5CSVN6MFV4UERj?=
 =?utf-8?B?ZTRDRjJDc2Q1RUFzaWZoT2NPS2E4TERMZGlYSWZyV0tGcmZiRWVKSFNnaldU?=
 =?utf-8?B?VFgwYjByS1ZZZnNNUW1NU01IVVA3SFVZN0xRbXRXLzJnRW5INHJUVkg0YU0v?=
 =?utf-8?B?VnZhaUZDbTBhM1d1RzArNTRmenhsb2tPbHpDT3BZUG1icmwvbzZHSzVIbndl?=
 =?utf-8?B?M3FFSzAwdlVMWWRlcFlZOXBnT0FtN0tVTFZpcnZ1TlZWTlpJdGk4enBqQi9y?=
 =?utf-8?B?eFM5c3FmVnBaQlI1TTloaHFGZVBQMjhjQ3ZlREtIVERRWXpodVkzQ29LYjh3?=
 =?utf-8?B?K3Z6blh3bHZ1UTIxRlFDVmJ2Q2NqWXY4Z0I0QnA2bitDQ3BVSGRRQXVHbTFw?=
 =?utf-8?B?dmhPL2EvU0U2WWY0cTBZR2pvQUs0UUZVWlg4aVk0T2VPNG15SW9xR3lOeDNw?=
 =?utf-8?B?U3NDeXB5ay9tVUxEQThWRy9qUG9zWUREeWFxWE00R1IxbTgrdTYvbkQrSEQ5?=
 =?utf-8?B?L21HY0YrVC9wdnFNNTZNWHNiMktQQjZ5M2dJWkF1TkdXKy9kMXZjN2xhRUo3?=
 =?utf-8?B?SVNFbXRYcWF3Ynk5VHFLZFlxRkFlaFh6MkZka3B5Ump3SnF2dkFPYTc4RUN0?=
 =?utf-8?B?a1A0UlRucDdzWGt4ZkxpYVFYNmVoV3d0UXF0aTltQ25udHYxc05QbHhPbjF5?=
 =?utf-8?B?V3lMOTdiM3Jza3pvTEJmbjRmWW9IVkVWOVNJY0FmRjJxUzZPUUdJM0RjRERj?=
 =?utf-8?B?MEdhTXFaZmIzdXovZDJ2VWtmWWVMQ0crSGdCam1ZaXM5NVdseTByU2JrSHF1?=
 =?utf-8?B?M05iZzh1L1hUWHloNHU0K3FhMzZIRStwNGpGSzRzeWVNVEFuMnZlL3B0N0xZ?=
 =?utf-8?B?eGhuK1k1U1dVeHNidGFSbWc3cDhJMEd2QlFNeUpwQ2JnODd2VUdiVVNXdjdp?=
 =?utf-8?B?bVRYVXY4QmtkTXJ5QzBxWHZaZVdaV1BvRHhaaWtBL0tXcTJmQXZPMG02eUVk?=
 =?utf-8?B?SkNvZDlYV0ZTK3pUbjAxK3JhSXdhbWxpUGpadVpBblFObE1vbUJoalBaZWM5?=
 =?utf-8?B?N0ZPaFBkdjJZRzhFOU8ycmJ2MVZGYjZoOWs1ei8zNEFLcXEraWNxaE1ZYkxL?=
 =?utf-8?B?MCtHLy9CSm5BWFoyLzZjeHhkVHZ5cU9qSlhlQklRekdUTnRvTWJiRGJoUjRn?=
 =?utf-8?B?bUpvR01MdXEva3ZiODdQd3pqZFkvZTlxSUt4K0o1Q2V6OHh0VWE0WG9mK0g4?=
 =?utf-8?B?SE9WcXczdnRJeHNjSkxta21FanQzRGN4akNkZG1hcW9uNithQkZsbTBjQzhw?=
 =?utf-8?B?YlY5RGovbGttTFZjUmZNc0pyYTlOZUFKd1h2Rk9QQ210UHMyRFRqZz09?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: hb8SGIrBJuoRgr8MbFaEoKgUaPr+940HIfjmDbc0IOWlo7ipm1N8qhziol4LgkM2oXePbjQVuwJCXiX5GEJCd/8gjF6hY6eoopl0wbRHRwOWfJGvKOxxd9ncN0g1kLOlXa0xMWEOUqNhhplR3C2tNwndmFTWhC2mDkRldG5/YXy2C8TfXHoHSBSZrTfU3D+lEbNFiMB4Acb0ZqZq1fz+EdLkBfCFpZxL6gwn6jroSoLr+alKKliYcMTHYd1YuxVkIEGC5w7q1QXQ+2O+lJra4cUnh1FNfP/RBeM2aDEMzyjdd00OoHVVadF5m11KbGQAYSCO7scrGKn7Au60dwdFPWfcy6EjjY5Dfhqb+Zv8GwtEF2zKhsgJo/lsYFs8CIXoylxkLC49pVnfgeMNZBG8b/QpD0BNyxNNusTNiGGQ6N0gtw2lI4nT8c3JB+Gd1nyOSd8Byp+DjVMJqfnd15AyALJFpLWKFOAWw7wRt2pJQ2vlTjbYEgH1WTKnu+M5SZ81nPdX5IgzFFVeQ7MfsDbQMAxc1ymgG7G8+l5LrkifJ3ZdRExwCd+71zVc7FEkmYIHRgZI03rQZn2omt+KSLgiApwhFj/B9+mgdf3pZpbVdWKAaPzFTDYy8FyBzmMQOJGRk5dBWet7kaBseYdF7RbZbw==
X-OriginatorOrg: llnl.gov
X-MS-Exchange-CrossTenant-Network-Message-Id: 0445a9f8-46fe-489c-92cb-08de5eb70f83
X-MS-Exchange-CrossTenant-AuthSource: SA1PR09MB11481.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 21:49:06.7911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a722dec9-ae4e-4ae3-9d75-fd66e2680a63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB9768
X-Proofpoint-ORIG-GUID: RH4U1Wod6rIEQWJ3AT17kWimf2X-_3db
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDE4MCBTYWx0ZWRfX6EQnpXNDAzWG
 q7aqOLcRaZ+JyDURYYDmo9pkpSamLpUjgmteAcaJohZpsFvkfMv+mFT2QbEteDsFQ/b13GMHLGI
 36oDDBqM4LWPsY2uarG3hTAQ+7AgECsx5OhJp3A8P747uaAZQY9I8FAUUDpdg6djbuzkDAYadH9
 qpyhxqznHazwFySZNm388szQr/G0gjsqRwBEZ91ZznB/wCvssC7ZHH2nDnb72F6bNYlk4wcnp8J
 8O0cKOpuUc948hCumm1PL2z18FKb0/9qmBNzEddW6ZiVekPTc03xegy9CHVTmWJ6RYVkm00U85x
 5Njg6MKIiFezMHE8scc5hcx+z2N6kKBX5/TUurxR4MGqBuT+d/fc1yRamFjC9pvfC7LyNxRvYhY
 X+skqhq9
X-Proofpoint-GUID: RH4U1Wod6rIEQWJ3AT17kWimf2X-_3db
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0
 mlxlogscore=999 clxscore=1011 adultscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2601280180
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add driver to control the NVMe slot LEDs on the Cray
 ClusterStor
 E1000. The driver provides hotplug attention status callbacks for the 24
 NVMe slots on the E1000. This allows users to access the E1000 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 FROM_GOV_DKIM_AU       From Government address and DKIM signed
X-Headers-End: 1vlE5U-0005fX-EN
Subject: [Openipmi-developer] [PATCH v8] Introduce Cray ClusterStor E1000
 NVMe slot LED driver
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Tony Hutter via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Hutter <hutter2@llnl.gov>
Cc: minyard@acm.org, alok.a.tiwari@oracle.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, corey@minyard.net,
 linux-pci@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lukas@wunner.de,m:helgaas@kernel.org,m:minyard@acm.org,m:alok.a.tiwari@oracle.com,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:linux-pci@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:mariusz.tkaczyk@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,llnl.gov:s=02022021-podllnl,doellnl.onmicrosoft.com:s=selector1-doellnl-onmicrosoft-com];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[hutter2@llnl.gov];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,llnl.gov:-,doellnl.onmicrosoft.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 384EBA991F
X-Rspamd-Action: no action

Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
The driver provides hotplug attention status callbacks for the 24 NVMe
slots on the E1000.  This allows users to access the E1000's locate and
fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
entries.  This driver uses IPMI to communicate with the E1000 controller
to toggle the LEDs.

Signed-off-by: Tony Hutter <hutter2@llnl.gov>
---
Changes in v8:
 - Remove unused variable in craye1k_get_attention_status().

Changes in v7:
 - Update sysfs-bus-pci text from feedback.
 - Add DMI dependency to Kconfig.
 - Refactor pciehp_core.c to remove CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
   code blocks.
 - Move errno.h #include into correct alphabetical order.
 - Add comment describing the reasoning for the debugfs counters.
 - Move craye1k_init() call from pcie_hp_init() to init_slot().
 - Make craye1k mutex global rather than in craye1k->lock.  This enables
   handling of craye1k_[get|set]_attention_status() calls before the craye1k
   driver is initialized.
 - Do driver cleanup on craye1k_smi_gone().

Changes in v6:
 - Change some dev_info_ratelimited() calls to dev_info().
 - Don't call craye1k_init() if pcie_port_service_register() fails.
 - Fix stray indent in #define CRAYE1K_POST_CMD_WAIT_MS

Changes in v5:
 - Removed unnecessary ipmi_smi.h #include.
 - Added WARN_ON() to craye1k_do_message() to sanity check that craye1k->lock
   is held.
 - Added additional comments for when craye1k->lock should be held.

Changes in v4:
 - Fix typo in Kconfig: "is it" ->  "it is"
 - Rename some #defines to CRAYE1K_SUBCMD_*
 - Use IS_ERR() check in craye1k_debugfs_init()
 - Return -EIO instead of -EINVAL when LED value check fails

Changes in v3:
 - Add 'attention' values in Documentation/ABI/testing/sysfs-bus-pci.
 - Remove ACPI_PCI_SLOT dependency.
 - Cleanup craye1k_do_message() error checking.
 - Skip unneeded memcpy() on failure in __craye1k_do_command().
 - Merge craye1k_do_command_and_netfn() code into craye1k_do_command().
 - Make craye1k_is_primary() return boolean.
 - Return negative error code on failure in craye1k_set_primary().

Changes in v2:
 - Integrated E1000 code into the pciehp driver as an built-in
   extention rather than as a standalone module.
 - Moved debug tunables and counters to debugfs.
 - Removed forward declarations.
 - Kept the /sys/bus/pci/slots/<slot>/attention interface rather
   than using NPEM/_DSM or led_classdev as suggested.  The "attention"
   interface is more beneficial for our site, since it allows us to
   control the NVMe slot LEDs agnostically across different enclosure
   vendors and kernel versions using the same scripts.  It is also
   nice to use the same /sys/bus/pci/slots/<slot>/ sysfs directory for
   both slot LED toggling ("attention") and slot power control
   ("power").
---
 Documentation/ABI/testing/sysfs-bus-pci |  21 +
 MAINTAINERS                             |   5 +
 drivers/pci/hotplug/Kconfig             |  10 +
 drivers/pci/hotplug/Makefile            |   3 +
 drivers/pci/hotplug/pciehp.h            |  20 +
 drivers/pci/hotplug/pciehp_core.c       |  20 +-
 drivers/pci/hotplug/pciehp_craye1k.c    | 687 ++++++++++++++++++++++++
 7 files changed, 765 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pci/hotplug/pciehp_craye1k.c

diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
index 92debe879ffb..8536d2ff30d1 100644
--- a/Documentation/ABI/testing/sysfs-bus-pci
+++ b/Documentation/ABI/testing/sysfs-bus-pci
@@ -231,6 +231,27 @@ Description:
 		    - scXX contains the device subclass;
 		    - iXX contains the device class programming interface.
 
+What:		/sys/bus/pci/slots/.../attention
+Date:		February 2025
+Contact:	linux-pci@vger.kernel.org
+Description:
+		The attention attribute is used to read or write the attention
+		status for an enclosure slot.  This is often used to set the
+		slot LED value on a NVMe storage enclosure.
+
+		Common values:
+		0 = OFF
+		1 = ON
+		2 = blink
+
+		Using the Cray ClusterStor E1000 extensions:
+		0 = fault LED OFF, locate LED OFF
+		1 = fault LED ON,  locate LED OFF
+		2 = fault LED OFF, locate LED ON
+		3 = fault LED ON,  locate LED ON
+
+		Other values are no-op, OFF, or ON depending on the driver.
+
 What:		/sys/bus/pci/slots/.../module
 Date:		June 2009
 Contact:	linux-pci@vger.kernel.org
diff --git a/MAINTAINERS b/MAINTAINERS
index 9ac254f4ec41..861576d60a36 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6543,6 +6543,11 @@ S:	Maintained
 F:	Documentation/filesystems/cramfs.rst
 F:	fs/cramfs/
 
+CRAY CLUSTERSTOR E1000 NVME SLOT LED DRIVER EXTENSIONS
+M:	Tony Hutter <hutter2@llnl.gov>
+S:	Maintained
+F:	drivers/pci/hotplug/pciehp_craye1k.c
+
 CRC LIBRARY
 M:	Eric Biggers <ebiggers@kernel.org>
 R:	Ard Biesheuvel <ardb@kernel.org>
diff --git a/drivers/pci/hotplug/Kconfig b/drivers/pci/hotplug/Kconfig
index 3207860b52e4..3cb84e5e13e9 100644
--- a/drivers/pci/hotplug/Kconfig
+++ b/drivers/pci/hotplug/Kconfig
@@ -183,4 +183,14 @@ config HOTPLUG_PCI_S390
 
 	  When in doubt, say Y.
 
+config HOTPLUG_PCI_PCIE_CRAY_E1000
+	bool "PCIe Hotplug extensions for Cray ClusterStor E1000"
+	depends on DMI && HOTPLUG_PCI_PCIE && IPMI_HANDLER=y
+	help
+	  Say Y here if you have a Cray ClusterStor E1000 and want to control
+	  your NVMe slot LEDs.  Without this driver it is not possible
+	  to control the fault and locate LEDs on the E1000's 24 NVMe slots.
+
+	  When in doubt, say N.
+
 endif # HOTPLUG_PCI
diff --git a/drivers/pci/hotplug/Makefile b/drivers/pci/hotplug/Makefile
index 40aaf31fe338..82a1f0592d0a 100644
--- a/drivers/pci/hotplug/Makefile
+++ b/drivers/pci/hotplug/Makefile
@@ -66,6 +66,9 @@ pciehp-objs		:=	pciehp_core.o	\
 				pciehp_ctrl.o	\
 				pciehp_pci.o	\
 				pciehp_hpc.o
+ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+pciehp-objs		+=	pciehp_craye1k.o
+endif
 
 shpchp-objs		:=	shpchp_core.o	\
 				shpchp_ctrl.o	\
diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp.h
index debc79b0adfb..3a8173f3e159 100644
--- a/drivers/pci/hotplug/pciehp.h
+++ b/drivers/pci/hotplug/pciehp.h
@@ -199,6 +199,17 @@ int pciehp_get_raw_indicator_status(struct hotplug_slot *h_slot, u8 *status);
 
 int pciehp_slot_reset(struct pcie_device *dev);
 
+#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+int craye1k_init(void);
+bool is_craye1k_board(void);
+int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot, u8 *status);
+int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot, u8 status);
+#else
+#define craye1k_init() (0)
+#define craye1k_get_attention_status NULL
+#define craye1k_set_attention_status NULL
+#endif
+
 static inline const char *slot_name(struct controller *ctrl)
 {
 	return hotplug_slot_name(&ctrl->hotplug_slot);
@@ -209,4 +220,13 @@ static inline struct controller *to_ctrl(struct hotplug_slot *hotplug_slot)
 	return container_of(hotplug_slot, struct controller, hotplug_slot);
 }
 
+static inline bool is_craye1k_slot(struct controller *ctrl)
+{
+#ifdef CONFIG_HOTPLUG_PCI_PCIE_CRAY_E1000
+	return (PSN(ctrl) >= 1 && PSN(ctrl) <= 24 && is_craye1k_board());
+#else
+	return false;
+#endif
+}
+
 #endif				/* _PCIEHP_H */
diff --git a/drivers/pci/hotplug/pciehp_core.c b/drivers/pci/hotplug/pciehp_core.c
index f59baa912970..3e8e2b3069bf 100644
--- a/drivers/pci/hotplug/pciehp_core.c
+++ b/drivers/pci/hotplug/pciehp_core.c
@@ -72,6 +72,22 @@ static int init_slot(struct controller *ctrl)
 	} else if (ctrl->pcie->port->hotplug_user_indicators) {
 		ops->get_attention_status = pciehp_get_raw_indicator_status;
 		ops->set_attention_status = pciehp_set_raw_indicator_status;
+	} else if (is_craye1k_slot(ctrl)) {
+		/*
+		 * The Cray E1000 driver controls slots 1-24.  Initialize the
+		 * Cray E1000 driver when slot 1 is seen.
+		 */
+		if (PSN(ctrl) == 1) {
+			retval = craye1k_init();
+			if (retval) {
+				ctrl_err(ctrl,
+					 "Error loading Cray E1000 extensions");
+				kfree(ops);
+				return retval;
+			}
+		}
+		ops->get_attention_status = craye1k_get_attention_status;
+		ops->set_attention_status = craye1k_set_attention_status;
 	}
 
 	/* register this slot with the hotplug pci core */
@@ -376,8 +392,10 @@ int __init pcie_hp_init(void)
 
 	retval = pcie_port_service_register(&hpdriver_portdrv);
 	pr_debug("pcie_port_service_register = %d\n", retval);
-	if (retval)
+	if (retval) {
 		pr_debug("Failure to register service\n");
+		return retval;
+	}
 
 	return retval;
 }
diff --git a/drivers/pci/hotplug/pciehp_craye1k.c b/drivers/pci/hotplug/pciehp_craye1k.c
new file mode 100644
index 000000000000..9c5bee81fdf8
--- /dev/null
+++ b/drivers/pci/hotplug/pciehp_craye1k.c
@@ -0,0 +1,687 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022-2024 Lawrence Livermore National Security, LLC
+ */
+/*
+ * Cray ClusterStor E1000 hotplug slot LED driver extensions
+ *
+ * This driver controls the NVMe slot LEDs on the Cray ClusterStore E1000.
+ * It provides hotplug attention status callbacks for the 24 NVMe slots on
+ * the E1000.  This allows users to access the E1000's locate and fault
+ * LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs entries.
+ * This driver uses IPMI to communicate with the E1000 controller to toggle
+ * the LEDs.
+ *
+ * This driver is based off of ibmpex.c
+ */
+
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/dmi.h>
+#include <linux/errno.h>
+#include <linux/ipmi.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/pci_hotplug.h>
+#include <linux/random.h>
+#include "pciehp.h"
+
+/* Cray E1000 commands */
+#define CRAYE1K_CMD_NETFN       0x3c
+#define CRAYE1K_CMD_PRIMARY     0x33
+#define CRAYE1K_CMD_FAULT_LED   0x39
+#define CRAYE1K_CMD_LOCATE_LED  0x22
+
+/* Subcommands */
+#define CRAYE1K_SUBCMD_GET_LED		0x0
+#define CRAYE1K_SUBCMD_SET_LED		0x1
+#define CRAYE1K_SUBCMD_SET_PRIMARY	0x1
+
+/*
+ * Milliseconds to wait after get/set LED command.  200ms value found though
+ * experimentation
+ */
+#define CRAYE1K_POST_CMD_WAIT_MS	200
+
+struct craye1k {
+	struct device *dev;   /* BMC device */
+	struct mutex lock;
+	struct completion read_complete;
+	struct ipmi_addr address;
+	struct ipmi_user *user;
+	int iface;
+
+	long tx_msg_id;
+	struct kernel_ipmi_msg tx_msg;
+	unsigned char tx_msg_data[IPMI_MAX_MSG_LENGTH];
+	unsigned char rx_msg_data[IPMI_MAX_MSG_LENGTH];
+	unsigned long rx_msg_len;
+	unsigned char rx_result;	/* IPMI completion code */
+
+	/* Parent dir for all our debugfs entries */
+	struct dentry *parent;
+
+	/* debugfs stats */
+	u64 check_primary;
+	u64 check_primary_failed;
+	u64 was_already_primary;
+	u64 was_not_already_primary;
+	u64 set_primary;
+	u64 set_initial_primary_failed;
+	u64 set_primary_failed;
+	u64 set_led_locate_failed;
+	u64 set_led_fault_failed;
+	u64 set_led_readback_failed;
+	u64 set_led_failed;
+	u64 get_led_failed;
+	u64 completion_timeout;
+	u64 wrong_msgid;
+	u64 request_failed;
+
+	/* debugfs configuration options */
+
+	/* Print info on spurious IPMI messages */
+	bool print_errors;
+
+	/* Retries for kernel IPMI layer */
+	u32 ipmi_retries;
+
+	/* Timeout in ms for IPMI (0 = use IPMI default_retry_ms) */
+	u32 ipmi_timeout_ms;
+
+	/* Timeout in ms to wait for E1000 message completion */
+	u32 completion_timeout_ms;
+};
+
+/*
+ * Make our craye1k a global so get/set_attention_status() can access it.
+ * This is safe since there's only one node controller on the board, and so it's
+ * impossible to instantiate more than one craye1k.
+ */
+static struct craye1k *craye1k_global;
+static DEFINE_MUTEX(craye1k_lock);
+
+/*
+ * The E1000 command timeout and retry values were found though experimentation
+ * by looking at the error counters.  Keep the counters around to troubleshoot
+ * any issues with our current timeout/retry values.
+ */
+static struct dentry *
+craye1k_debugfs_init(struct craye1k *craye1k)
+{
+	umode_t mode = 0644;
+	struct dentry *parent = debugfs_create_dir("pciehp_craye1k", NULL);
+
+	if (IS_ERR(parent))
+		return NULL;
+
+	debugfs_create_x64("check_primary", mode, parent,
+			   &craye1k->check_primary);
+	debugfs_create_x64("check_primary_failed", mode, parent,
+			   &craye1k->check_primary_failed);
+	debugfs_create_x64("was_already_primary", mode, parent,
+			   &craye1k->was_already_primary);
+	debugfs_create_x64("was_not_already_primary", mode, parent,
+			   &craye1k->was_not_already_primary);
+	debugfs_create_x64("set_primary", mode, parent,
+			   &craye1k->set_primary);
+	debugfs_create_x64("set_initial_primary_failed", mode, parent,
+			   &craye1k->set_initial_primary_failed);
+	debugfs_create_x64("set_primary_failed", mode, parent,
+			   &craye1k->set_primary_failed);
+	debugfs_create_x64("set_led_locate_failed", mode, parent,
+			   &craye1k->set_led_locate_failed);
+	debugfs_create_x64("set_led_fault_failed", mode, parent,
+			   &craye1k->set_led_fault_failed);
+	debugfs_create_x64("set_led_readback_failed", mode, parent,
+			   &craye1k->set_led_readback_failed);
+	debugfs_create_x64("set_led_failed", mode, parent,
+			   &craye1k->set_led_failed);
+	debugfs_create_x64("get_led_failed", mode, parent,
+			   &craye1k->get_led_failed);
+	debugfs_create_x64("completion_timeout", mode, parent,
+			   &craye1k->completion_timeout);
+	debugfs_create_x64("wrong_msgid", mode, parent,
+			   &craye1k->wrong_msgid);
+	debugfs_create_x64("request_failed", mode, parent,
+			   &craye1k->request_failed);
+
+	debugfs_create_x32("ipmi_retries", mode, parent,
+			   &craye1k->ipmi_retries);
+	debugfs_create_x32("ipmi_timeout_ms", mode, parent,
+			   &craye1k->ipmi_timeout_ms);
+	debugfs_create_x32("completion_timeout_ms", mode, parent,
+			   &craye1k->completion_timeout_ms);
+	debugfs_create_bool("print_errors", mode, parent,
+			    &craye1k->print_errors);
+
+	/* Return parent dir dentry */
+	return parent;
+}
+
+/*
+ * craye1k_msg_handler() - IPMI message response handler
+ */
+static void craye1k_msg_handler(struct ipmi_recv_msg *msg, void *user_msg_data)
+{
+	struct craye1k *craye1k = user_msg_data;
+
+	if (msg->msgid != craye1k->tx_msg_id) {
+		craye1k->wrong_msgid++;
+		if (craye1k->print_errors) {
+			dev_warn_ratelimited(craye1k->dev,
+					     "rx msgid %ld != %ld",
+					     msg->msgid, craye1k->tx_msg_id);
+		}
+		ipmi_free_recv_msg(msg);
+		return;
+	}
+
+	/* Set rx_result to the IPMI completion code */
+	if (msg->msg.data_len > 0)
+		craye1k->rx_result = msg->msg.data[0];
+	else
+		craye1k->rx_result = IPMI_UNKNOWN_ERR_COMPLETION_CODE;
+
+	if (msg->msg.data_len > 1) {
+		/* Exclude completion code from data bytes */
+		craye1k->rx_msg_len = msg->msg.data_len - 1;
+		memcpy(craye1k->rx_msg_data, msg->msg.data + 1,
+		       craye1k->rx_msg_len);
+	} else {
+		craye1k->rx_msg_len = 0;
+	}
+
+	ipmi_free_recv_msg(msg);
+
+	complete(&craye1k->read_complete);
+}
+
+static const struct ipmi_user_hndl craye1k_user_hndl = {
+	.ipmi_recv_hndl = craye1k_msg_handler
+};
+
+static void craye1k_new_smi(int iface, struct device *dev)
+{
+	int rc;
+	struct craye1k *craye1k;
+
+	craye1k = kzalloc(sizeof(*craye1k), GFP_KERNEL);
+	if (!craye1k)
+		return;
+
+	craye1k->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
+	craye1k->address.channel = IPMI_BMC_CHANNEL;
+	craye1k->iface = iface;
+	craye1k->dev = dev;
+	craye1k->tx_msg.data = craye1k->tx_msg_data;
+	craye1k->ipmi_retries = 4;
+	craye1k->ipmi_timeout_ms = 500;
+	craye1k->completion_timeout_ms = 300;
+
+	init_completion(&craye1k->read_complete);
+
+	dev_set_drvdata(dev, craye1k);
+
+	rc = ipmi_create_user(craye1k->iface, &craye1k_user_hndl, craye1k,
+			      &craye1k->user);
+	if (rc < 0) {
+		dev_err(dev, "Unable to register IPMI user, iface %d\n",
+			craye1k->iface);
+		kfree(craye1k);
+		dev_set_drvdata(dev, NULL);
+		return;
+	}
+
+	mutex_lock(&craye1k_lock);
+
+	/* There's only one node controller so driver data should not be set */
+	WARN_ON(craye1k_global);
+
+	craye1k_global = craye1k;
+	craye1k->parent = craye1k_debugfs_init(craye1k);
+	mutex_unlock(&craye1k_lock);
+	if (!craye1k->parent)
+		dev_warn(dev, "Cannot create debugfs");
+
+	dev_info(dev, "Cray ClusterStor E1000 slot LEDs registered");
+}
+
+static void craye1k_smi_gone(int iface)
+{
+	pr_warn("craye1k: Got unexpected smi_gone, iface=%d", iface);
+
+	mutex_lock(&craye1k_lock);
+	if (craye1k_global) {
+		debugfs_remove_recursive(craye1k_global->parent);
+		kfree(craye1k_global);
+		craye1k_global = NULL;
+	}
+	mutex_unlock(&craye1k_lock);
+}
+
+static struct ipmi_smi_watcher craye1k_smi_watcher = {
+	.owner = THIS_MODULE,
+	.new_smi = craye1k_new_smi,
+	.smi_gone = craye1k_smi_gone
+};
+
+/*
+ * craye1k_send_message() - Send the message already setup in 'craye1k'
+ *
+ * Context: craye1k_lock is already held.
+ * Return: 0 on success, non-zero on error.
+ */
+static int craye1k_send_message(struct craye1k *craye1k)
+{
+	int rc;
+
+	rc = ipmi_validate_addr(&craye1k->address, sizeof(craye1k->address));
+	if (rc) {
+		dev_err_ratelimited(craye1k->dev, "ipmi_validate_addr() = %d\n",
+				    rc);
+		return rc;
+	}
+
+	craye1k->tx_msg_id++;
+
+	rc = ipmi_request_settime(craye1k->user, &craye1k->address,
+				  craye1k->tx_msg_id, &craye1k->tx_msg, craye1k,
+				  0, craye1k->ipmi_retries,
+				  craye1k->ipmi_timeout_ms);
+
+	if (rc) {
+		craye1k->request_failed++;
+		return rc;
+	}
+
+	return 0;
+}
+
+/*
+ * craye1k_do_message() - Send the message in 'craye1k' and wait for a response
+ *
+ * Context: craye1k_lock is already held.
+ * Return: 0 on success, non-zero on error.
+ */
+static int craye1k_do_message(struct craye1k *craye1k)
+{
+	int rc;
+	struct completion *read_complete = &craye1k->read_complete;
+	unsigned long tout = msecs_to_jiffies(craye1k->completion_timeout_ms);
+
+	WARN_ON(!mutex_is_locked(&craye1k_lock));
+
+	rc = craye1k_send_message(craye1k);
+	if (rc)
+		return rc;
+
+	rc = wait_for_completion_killable_timeout(read_complete, tout);
+	if (rc == 0) {
+		/* timed out */
+		craye1k->completion_timeout++;
+		return -ETIME;
+	}
+
+	return 0;
+}
+
+/*
+ * __craye1k_do_command() - Do an IPMI command
+ *
+ * Send a command with optional data bytes, and read back response bytes.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on error.
+ */
+static int __craye1k_do_command(struct craye1k *craye1k, u8 netfn, u8 cmd,
+				u8 *send_data, u8 send_data_len, u8 *recv_data,
+				u8 recv_data_len)
+{
+	int rc;
+
+	craye1k->tx_msg.netfn = netfn;
+	craye1k->tx_msg.cmd = cmd;
+
+	if (send_data) {
+		memcpy(&craye1k->tx_msg_data[0], send_data, send_data_len);
+		craye1k->tx_msg.data_len = send_data_len;
+	} else {
+		craye1k->tx_msg_data[0] = 0;
+		craye1k->tx_msg.data_len = 0;
+	}
+
+	rc = craye1k_do_message(craye1k);
+	if (rc == 0)
+		memcpy(recv_data, craye1k->rx_msg_data, recv_data_len);
+
+	return rc;
+}
+
+/*
+ * craye1k_do_command() - Do a Cray E1000 specific IPMI command.
+ * @cmd: Cray E1000 specific command
+ * @send_data:  Data to send after the command
+ * @send_data_len: Data length
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: the last byte from the response or 0 if response had no response
+ * data bytes, else -1 on error.
+ */
+static int craye1k_do_command(struct craye1k *craye1k, u8 cmd, u8 *send_data,
+			      u8 send_data_len)
+{
+	int rc;
+
+	rc = __craye1k_do_command(craye1k, CRAYE1K_CMD_NETFN, cmd, send_data,
+				  send_data_len, NULL, 0);
+	if (rc != 0) {
+		/* Error attempting command */
+		return -1;
+	}
+
+	if (craye1k->tx_msg.data_len == 0)
+		return 0;
+
+	/* Return last received byte value */
+	return craye1k->rx_msg_data[craye1k->rx_msg_len - 1];
+}
+
+/*
+ * __craye1k_set_primary() - Tell the BMC we want to be the primary server
+ *
+ * An E1000 board has two physical servers on it.  In order to set a slot
+ * NVMe LED, this server needs to first tell the BMC that it's the primary
+ * server.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on error.
+ */
+static int __craye1k_set_primary(struct craye1k *craye1k)
+{
+	u8 bytes[2] = {CRAYE1K_SUBCMD_SET_PRIMARY, 1};	/* set primary to 1 */
+
+	craye1k->set_primary++;
+	return craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, bytes, 2);
+}
+
+/*
+ * craye1k_is_primary() - Are we the primary server?
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: true if we are the primary server, false otherwise.
+ */
+static bool craye1k_is_primary(struct craye1k *craye1k)
+{
+	u8 byte = 0;
+	int rc;
+
+	/* Response byte is 0x1 on success */
+	rc = craye1k_do_command(craye1k, CRAYE1K_CMD_PRIMARY, &byte, 1);
+	craye1k->check_primary++;
+	if (rc == 0x1)
+		return true;   /* success */
+
+	craye1k->check_primary_failed++;
+	return false;   /* We are not the primary server node */
+}
+
+/*
+ * craye1k_set_primary() - Attempt to set ourselves as the primary server
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, -1 otherwise.
+ */
+static int craye1k_set_primary(struct craye1k *craye1k)
+{
+	int tries = 10;
+
+	if (craye1k_is_primary(craye1k)) {
+		craye1k->was_already_primary++;
+		return 0;
+	}
+	craye1k->was_not_already_primary++;
+
+	/* delay found through experimentation */
+	msleep(300);
+
+	if (__craye1k_set_primary(craye1k) != 0) {
+		craye1k->set_initial_primary_failed++;
+		return -1;	/* error */
+	}
+
+	/*
+	 * It can take 2 to 3 seconds after setting primary for the controller
+	 * to report that it is the primary.
+	 */
+	while (tries--) {
+		msleep(500);
+		if (craye1k_is_primary(craye1k))
+			break;
+	}
+
+	if (tries == 0) {
+		craye1k->set_primary_failed++;
+		return -1;	/* never reported that it's primary */
+	}
+
+	/* Wait for primary switch to finish */
+	msleep(1500);
+
+	return 0;
+}
+
+/*
+ * craye1k_get_slot_led() - Get slot LED value
+ * @slot: Slot number (1-24)
+ * @is_locate_led: 0 = get fault LED value, 1 = get locate LED value
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: slot value on success, -1 on failure.
+ */
+static int craye1k_get_slot_led(struct craye1k *craye1k, unsigned char slot,
+				bool is_locate_led)
+{
+	u8 bytes[2];
+	u8 cmd;
+
+	bytes[0] = CRAYE1K_SUBCMD_GET_LED;
+	bytes[1] = slot;
+
+	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
+
+	return craye1k_do_command(craye1k, cmd, bytes, 2);
+}
+
+/*
+ * craye1k_set_slot_led() - Attempt to set the locate/fault LED to a value
+ * @slot: Slot number (1-24)
+ * @is_locate_led: 0 = use fault LED, 1 = use locate LED
+ * @value: Value to set (0 or 1)
+ *
+ * Check the LED value after calling this function to ensure it has been set
+ * properly.
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, non-zero on failure.
+ */
+static int craye1k_set_slot_led(struct craye1k *craye1k, unsigned char slot,
+				unsigned char is_locate_led,
+				unsigned char value)
+{
+	u8 bytes[3];
+	u8 cmd;
+
+	bytes[0] = CRAYE1K_SUBCMD_SET_LED;
+	bytes[1] = slot;
+	bytes[2] = value;
+
+	cmd = is_locate_led ? CRAYE1K_CMD_LOCATE_LED : CRAYE1K_CMD_FAULT_LED;
+
+	return craye1k_do_command(craye1k, cmd, bytes, 3);
+}
+
+/*
+ * __craye1k_get_attention_status() - Get LED value
+ *
+ * Context: craye1k_lock is already held.
+ * Returns: 0 on success, -EIO on failure.
+ */
+static int __craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
+					  u8 *status, bool set_primary)
+{
+	unsigned char slot;
+	int locate, fault;
+	struct craye1k *craye1k;
+
+	craye1k = craye1k_global;
+	slot = PSN(to_ctrl(hotplug_slot));
+
+	if (set_primary) {
+		if (craye1k_set_primary(craye1k) != 0) {
+			craye1k->get_led_failed++;
+			return -EIO;
+		}
+	}
+
+	locate = craye1k_get_slot_led(craye1k, slot, true);
+	if (locate == -1) {
+		craye1k->get_led_failed++;
+		return -EIO;
+	}
+	msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+	fault = craye1k_get_slot_led(craye1k, slot, false);
+	if (fault == -1) {
+		craye1k->get_led_failed++;
+		return -EIO;
+	}
+	msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+	*status = locate << 1 | fault;
+
+	return 0;
+}
+
+int craye1k_get_attention_status(struct hotplug_slot *hotplug_slot,
+				 u8 *status)
+{
+	int rc;
+
+	if (mutex_lock_interruptible(&craye1k_lock) != 0)
+		return -EINTR;
+
+	if (!craye1k_global) {
+		/* Driver isn't initialized yet */
+		mutex_unlock(&craye1k_lock);
+		return -EOPNOTSUPP;
+	}
+
+	rc =  __craye1k_get_attention_status(hotplug_slot, status, true);
+
+	mutex_unlock(&craye1k_lock);
+	return rc;
+}
+
+int craye1k_set_attention_status(struct hotplug_slot *hotplug_slot,
+				 u8 status)
+{
+	unsigned char slot;
+	int tries = 4;
+	int rc;
+	u8 new_status;
+	struct craye1k *craye1k;
+	bool locate, fault;
+
+	if (mutex_lock_interruptible(&craye1k_lock) != 0)
+		return -EINTR;
+
+	if (!craye1k_global) {
+		/* Driver isn't initialized yet */
+		mutex_unlock(&craye1k_lock);
+		return -EOPNOTSUPP;
+	}
+
+	craye1k = craye1k_global;
+
+	slot = PSN(to_ctrl(hotplug_slot));
+
+	/* Retry to ensure all LEDs are set */
+	while (tries--) {
+		/*
+		 * The node must first set itself to be the primary node before
+		 * setting the slot LEDs (each board has two nodes, or
+		 * "servers" as they're called by the manufacturer).  This can
+		 * lead to contention if both nodes are trying to set the LEDs
+		 * at the same time.
+		 */
+		rc = craye1k_set_primary(craye1k);
+		if (rc != 0) {
+			/* Could not set as primary node.  Just retry again. */
+			continue;
+		}
+
+		/* Write value twice to increase success rate */
+		locate = (status & 0x2) >> 1;
+		craye1k_set_slot_led(craye1k, slot, 1, locate);
+		if (craye1k_set_slot_led(craye1k, slot, 1, locate) != 0) {
+			craye1k->set_led_locate_failed++;
+			continue;	/* fail, retry */
+		}
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		fault = status & 0x1;
+		craye1k_set_slot_led(craye1k, slot, 0, fault);
+		if (craye1k_set_slot_led(craye1k, slot, 0, fault) != 0) {
+			craye1k->set_led_fault_failed++;
+			continue;	/* fail, retry */
+		}
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		rc = __craye1k_get_attention_status(hotplug_slot, &new_status,
+						    false);
+
+		msleep(CRAYE1K_POST_CMD_WAIT_MS);
+
+		if (rc == 0 && new_status == status)
+			break;	/* success */
+
+		craye1k->set_led_readback_failed++;
+
+		/*
+		 * At this point we weren't successful in setting the LED and
+		 * need to try again.
+		 *
+		 * Do a random back-off to reduce contention with other server
+		 * node in the unlikely case that both server nodes are trying to
+		 * trying to set a LED at the same time.
+		 *
+		 * The 500ms minimum in the back-off reduced the chance of this
+		 * whole retry loop failing from 1 in 700 to none in 10000.
+		 */
+		msleep(500 + (get_random_long() % 500));
+	}
+	mutex_unlock(&craye1k_lock);
+	if (tries == 0) {
+		craye1k->set_led_failed++;
+		return -EIO;
+	}
+
+	return 0;
+}
+
+bool is_craye1k_board(void)
+{
+	return dmi_match(DMI_PRODUCT_NAME, "VSSEP1EC");
+}
+
+int craye1k_init(void)
+{
+	return ipmi_smi_watcher_register(&craye1k_smi_watcher);
+}
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Tony Hutter <hutter2@llnl.gov>");
+MODULE_DESCRIPTION("Cray E1000 NVMe Slot LED driver");
-- 
2.43.7


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
