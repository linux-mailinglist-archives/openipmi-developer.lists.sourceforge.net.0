Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6FA00427
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Jan 2025 07:19:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTb1i-0005Oa-Vb;
	Fri, 03 Jan 2025 06:19:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1tTb1g-0005OQ-UY
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 06:19:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7+GgSNuPY3tUZGTmrElWeQdW+FZyUn33OfE6vYqVew=; b=iC+KGiISy1ggGwfBEc88dGVeSF
 WrDWblUWIFBNi0iumQlXQybU0zh6XlKkOubiX+DjR/i7lLV6wojqs0kHR9ldERTPseOq2XKNdsB1A
 gYWWgiYaVKekLTJOZAlg3Y+RRJHh7UbkXNtAwvMQShXl4Aa5tRq4oFV1/d0P5EAi7jN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y7+GgSNuPY3tUZGTmrElWeQdW+FZyUn33OfE6vYqVew=; b=CjQCrQMDFwDzFTvJaJ1qH2YxwM
 m/zoXzlDKKbF6y0g7fzHA37LbOTxiDeLDYzjdIgjprUzMEgr2LFV68UK9u1R/SHkfRNir4pBQ2zRD
 JXdJURCAP1G5ivdl/1Nbj1EaS3jMzKAuzLh6Kv3E93/BWy/2z9LWGU74Sn2Di7CBzhEs=;
Received: from mail-bn8nam04on2105.outbound.protection.outlook.com
 ([40.107.100.105] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tTb1e-0008OU-Ub for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 06:19:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KpFhTPBPkpOJ11fURuMHwbfOnzlHjIITWiRI82EumG2J5BGUgdHdjlOf8I8mDTtRXiwXbZmze/NtRN4/rQa07SKAfk0LtK/GBTNUZ+E/xirCc/XuDNrsxR1u4U2Pl0VvUN6Q/lv+fvURGiom2nIPHXKqdVjIdaguSnnzUOqbRRezHs7KrmDEixlNXognsq0+cLzojkhIJ1YM7v/ahWoOr/y3ybkmBhKTEymA7f+yTD7nPWUhfZAvcOAgG2LFz5KAehQRA/efNGPvyE94WCZWl5FPkDUByK0Kp/81pqeRAlrH0PN43cakeG4jhLrF8NH5ynREnWG4JxMxn9oW+iwJeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y7+GgSNuPY3tUZGTmrElWeQdW+FZyUn33OfE6vYqVew=;
 b=LWOAsEYlcG85HvnAkE/NZiwHWPJguqCs7t8sruxNm1tQY1asysA/GFz/hQgZ5dBqtxOZR+CbwaqJT6pPZ7cAqtGKVLfIFfjv24gpdmVWwK8YgpZtaiffCOKvTjfL6tDmUB2p83A6dhe85VevN1OcMPwqUtxV09aeCrJ0cKgA0LrSUJMdEPF5vqcVK6ou4DZGyUPuOYXEmlSOnznsURkoU+FuNd/bJL32fDHLL9FGcXP28QpgRHChZuwmF85Nh83/1gnk84PioQeRaAuhlpcs6kixVVppsdboiuu5OdT3z7RFiWqOBtq3WBSe5XnuqQvsoHelNJ/Y+Vdk7v/Q48e7HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y7+GgSNuPY3tUZGTmrElWeQdW+FZyUn33OfE6vYqVew=;
 b=RcIgH7IbUsRHet/+7cjn3byjjAxSO7pqf0y9oiTZURk5DcBblSBZ3d2OMUuTia+xtU+1cKezLc8X/Z7bcZaHqp8IcKP0+9QwubCmZxIFL4tX9t7i7/A39SXkglWl3D5ggsoHJsLDzpY3yPsUhtQ8eqS7K/xzF6OAUmjS40PJGAs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ2PR01MB8193.prod.exchangelabs.com (2603:10b6:a03:4f6::15) by
 DM8PR01MB7095.prod.exchangelabs.com (2603:10b6:8:3::11) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.5; Fri, 3 Jan 2025 03:44:53 +0000
Received: from SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d]) by SJ2PR01MB8193.prod.exchangelabs.com
 ([fe80::4167:3f60:16af:411d%4]) with mapi id 15.20.8314.012; Fri, 3 Jan 2025
 03:44:53 +0000
Message-ID: <c92cab21-ca41-4f34-b507-e773c463d82f@os.amperecomputing.com>
Date: Fri, 3 Jan 2025 10:44:46 +0700
User-Agent: Mozilla Thunderbird
To: Cosmo Chou <chou.cosmo@gmail.com>
References: <20250101165431.2113407-1-chou.cosmo@gmail.com>
Content-Language: en-CA
In-Reply-To: <20250101165431.2113407-1-chou.cosmo@gmail.com>
X-ClientProxiedBy: SI2PR02CA0006.apcprd02.prod.outlook.com
 (2603:1096:4:194::8) To SJ2PR01MB8193.prod.exchangelabs.com
 (2603:10b6:a03:4f6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR01MB8193:EE_|DM8PR01MB7095:EE_
X-MS-Office365-Filtering-Correlation-Id: 452bd994-9421-417a-a7be-08dd2ba8fba6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFVXUXR6Q2h6THpnbm4xUlZBZUhtT1g0blFnOTVEVGZFdTdlRGVTbnBLK3Rj?=
 =?utf-8?B?Yyt1WGRpTDJZZHdrZHk4ZjY1NDJxYWw2REIxN1o1eU1aekpJRDl2NDl6dVBw?=
 =?utf-8?B?cnk5UXpUbVpYb3VoRW5kdGZoclBZbE1VVDh5TGdZcDk4V0FNWjhzQ2VsREhz?=
 =?utf-8?B?dHFzMGV2UTEwOW8xOVIyTmpRUjVXRlpVdmpmaThDQytuNEljbCtIQUoxblhk?=
 =?utf-8?B?ZW9JU3FaUGZCdzk0VTZHODcvSVM4Yi9MMmo0RkJkNUZMR3NBb2ZCSzQzRTk1?=
 =?utf-8?B?RUJuV282TEtHbWhHNG5qMXJ6eW5mSDhkdjIvU1FDNWFFOTYyTG1xZVU2USsw?=
 =?utf-8?B?THozWm4zMDNWOEtEeWd5ZWJTRXYyamRDZmxLeXlLV0tCMG5NRTY1alhjWVBk?=
 =?utf-8?B?bkxDTmRiMFY3cnRmTXVla2Jnam5ETmJUMERWS3I3NFlseUZWV0tEanNpNkYr?=
 =?utf-8?B?b1FhK21OTW1zRGVUZDVzT01wTUlmUXUrcDZXRHE0d1dnL29rQzVXUzNGUUcw?=
 =?utf-8?B?QjFsYjR3Rm5mcGlta2VJdlQ4T2hFajJWWk44QW90ZFFjdExOdnBLcTlTbVVN?=
 =?utf-8?B?dmZ6S2dDQzVvQ1J6TEtabExUcm5PN3Q5bm12ekc3ZlpBQlB6MkpCMmhlUHR3?=
 =?utf-8?B?QW1LZ28wUW1vUitWSmVERTZ1ajVQR1hRM2x6TnFjVTV4UHBWUGE0UDZ2WGtU?=
 =?utf-8?B?WldIcmdqRWdhQ3NwT1ZIZDVrWVE4R0dyNGMvblBVOCtJZHFENFc1cU83VWJy?=
 =?utf-8?B?THduRVZQUzN3OCtqNDcrNkxzVE9TWjRBbGpNZUczUkJNUmVPZ0xHV3lIT1g4?=
 =?utf-8?B?NkVLVS9yMWhLa2hHZldVNG1YL1ZDbnUxQ1lrRzVkVk9Ddnoybi94OVZKejNX?=
 =?utf-8?B?VEFQNTNoZzcxbG5vbmZnTWhpV29xTVFBeEplT2ZGQ000MS9FckYvTTFsaXZM?=
 =?utf-8?B?UHh1c0ZhK09aeGVjTnY2QW5kQ3IxQkM3Sm8yc3hvcWhNVHcxd3djWHF1ZHFs?=
 =?utf-8?B?ZmJOZHRMYkpyMVk4TFQ1bHJvK3YxL0dUYk9aY1Z6UTdSelNSNVNUSCtzRGk4?=
 =?utf-8?B?OGJCakpHV2FQSXREeFc2dWsxUUJpZmxVamphcFByNjh0cmdxbytRaDk5WVRE?=
 =?utf-8?B?N3F3VnIxdDFiNytZd3ZXdERsdDJnYkdwaHZFem53SHptMVBtTjRwTFZCTmtp?=
 =?utf-8?B?bkVLTFRncjdCYU0xKzhwWmNlM3lsUUZBWjJwRWxQenhxZ3p5VExQdUNhNmtF?=
 =?utf-8?B?TVJSTVdvZzRjcmRZbVd3QmE5SHg0MGhzNjZDa2FUWC94RGFrUnlvbkNuZ0xP?=
 =?utf-8?B?MlpPcU1YRjdYZGZlekZDeFZhNkhmMlJFUkhMY2pyOTFYUlNGMHN3TzEydWQv?=
 =?utf-8?B?THliMzZXR3dONFdrSVk2RU1VOFVGSThYN2Rkb0RzVFdwR1EzWGV1UkpFeElN?=
 =?utf-8?B?SkJqSUlsbHI0NnRmamdndWticDVxdHpTT3NqQ3dhc0E5QUoxbjllNWNOZ1lU?=
 =?utf-8?B?blFYb2JCL1ZOdnNiV3g2VnFHZzlUNm1SR0FGKzZFRGJMNklqT3BJcnh6bGdk?=
 =?utf-8?B?VTlOaUFvbjJYbEVtQ1JCbXJHd1RKajVibGN4aE1peU54U0cyY3IrVFBuNFhq?=
 =?utf-8?B?ckp5aWR4WGJkUXBsdWV3ZDZLWEMvNmtKVVlkZnpTU3l4Zk4wR2l4UjJxSHdt?=
 =?utf-8?B?d0JyZXJrRUI4bkc2VUpkWFUvb2ZXVEZlN1hXVGZNUlVuS25HOXRENWRSSzZu?=
 =?utf-8?B?Qmo2am1pdWI5ZEV2bXR3Snp1OVViM0QxN04vdkxxbmUzSFR0MDI2a0RwOENF?=
 =?utf-8?B?Wk8vOUJEN3BTRUdKdHlkcnNyM3BMZEhMREFWT0d4ZDc5cmRRdlRiT3prdjBI?=
 =?utf-8?Q?xC8a1lOei1Ywi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR01MB8193.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnBKOUtIRjNid0xMUmQvUWREVGY4VmFLdGNsVXRKc2kydFptRzNuUExzdUFU?=
 =?utf-8?B?YVRsaTQyL09yZkRwTWZWRXJSS3hjL1Bpd3F4N3pQdTZkQmtyZ014RndyZStv?=
 =?utf-8?B?STViVDNnOHAvb0Iwa253QkxFQjljSW5xVElHNXNoR3F0UnA0d3J3RmtFbENB?=
 =?utf-8?B?eWpvYTI3OVlqUVkxa0orS3hMcFRjUTFlS3U0MVM0OHFCZElneE1lME5NMHZp?=
 =?utf-8?B?MzdpUHBJQWlldml1ZlZwTEhQVlBweFdTdHpzZm45UmkzWXRnbG8vR0FJcHky?=
 =?utf-8?B?SXIxZzVDMkUyT0NqVkVHTkJMeUU1MVFuNnFTVXNxbFdja2hLNUEvRzhOeUZ5?=
 =?utf-8?B?VmhLT250VmU0YWZvN0FmR2V3UXZOV0hyM2xsMEZITitQSm5BWkxIN2RSbEJl?=
 =?utf-8?B?Zm9PR0xkOUZ4RFl4WUlLemtla3YxSDZJMUpaTVVKT3RxTWlhdXdqSEI1aDlV?=
 =?utf-8?B?MDlGbHI1SFR5OFdad0lzYVl1UlRybW1SYUh4Yi9BRzV1Nm9kWmlkUSs3VDRB?=
 =?utf-8?B?UDQxVDhyVkJlbGVHVTFlN25pS3VDRldteGhsdTNxRHFDTmpzZDRJSWpOc1Iy?=
 =?utf-8?B?ZnRHNVdKNlBwU2dOSUlJdlZta0xzNkhEK1Y1MXN6dS90Qmw5SFl6Z2xKVDRk?=
 =?utf-8?B?ZHl3R1BETFdOK1lSYUd0bHlLTnl5VVJINjVNR2M2NHA4SS9KTFFrSnluVGVo?=
 =?utf-8?B?bGh0Z1ZSN3hTZ0xqOGpCWTlkN2lDOWVxTVI5TjB1cW9IRytBWEtLOGxEeWxY?=
 =?utf-8?B?WUVwTHRRSDdzQnlwcnZxLzVlYUxld0xZMys3Z3poWmhwQXRWajJWY002OERl?=
 =?utf-8?B?YmFOd08rZjZ6U1BJZytxaVVNb0hMdk9GRW9kTm5CRHpneDFrZVk2a1BiMFNB?=
 =?utf-8?B?K2lkaWJhdGxON0VIZVA2MEtaT213ZVNISlpUbFhXMjVGdEV4aHVNTzdRNUpE?=
 =?utf-8?B?eHdlNVlpL3czaWdBQU5lUG9FTXZMM3hYUXUxOXhHb2dydlNTdWRSaHJiUm9p?=
 =?utf-8?B?QmRya2Jxa2VJN3NFblBXQlZIRStPZEhYZTZiZWRwbFNJMmpzZzhyVUd0YzJi?=
 =?utf-8?B?SjlXdjJOeFpaMFFtL1prYUNYZjk4ZXprRUdBd3JONlpWSGdTOE41YWlESVJw?=
 =?utf-8?B?YWZocmNSdHJsMkl4VWNZeE9lbjIzWW0wc1JiLzlCK1lmSEYrM3dmRng5U2FU?=
 =?utf-8?B?djFzTDB5UUUwdy9mK2prRkhMOG1pV3cyT2VVNWNtSFhkb2xYMFg5SWFtdEJr?=
 =?utf-8?B?cHZsa1ZSNkc0cllrMkhLZjJuS3NQdzdDT1A3U21XOWdBRkZhdUx6Y3hzN3F5?=
 =?utf-8?B?SE0rOFd3OGg3RC9XMmcrdUFuRk1DZWtyYW0zVmFvZUJlcUZEeVpjMjlYenE3?=
 =?utf-8?B?bElSU3pIWkZBdURBSTUrd1FkZEEwWHErQkZvU1lseVg0K3lyYVVqdkN0bkxV?=
 =?utf-8?B?eU9SekowWnpxQ1dsYnJaV0ZQYmhzMFJmcDNUSGlpUmlQV25iWXIwSHY1YWhK?=
 =?utf-8?B?MVpQbXUvWSs2Z1Rvc1NrZDlBMWlTaGh1bnU4N1JrUHFNeGdIUS9YbUQ3SmlS?=
 =?utf-8?B?WmFvZDJCdnN1UlgySHpqeXFGZGtkOWpaeHZ1TG5DNzFZT0dXTUJ0NWd4dlpw?=
 =?utf-8?B?WXNVYXhBcFFmQmxmSkN5a3l1WFB4a1dnRFVXdlUzU0puakJVd3VrRDUveDht?=
 =?utf-8?B?eFh6WllHb21PQXRyVVZESDI4ZTQ0S081REp0NjgzaWhwblRXbkNKbUYwUnNk?=
 =?utf-8?B?bDNicExNWFN6L3AxUHl0MDdCR3dmVHdaYmZxdEhUdlBsL2FscVZENjVLaDdD?=
 =?utf-8?B?eHZnUURJeTFZYlRQVEtFVStLNno3SHgvRHNUejBKS0RlaUVhUnpxV2EvbFJo?=
 =?utf-8?B?N1F4bUhHUTVycmo5WitPR1dQdUY0VnRvRlRHS0IwcTB0NFFYQUFrYkpydTZT?=
 =?utf-8?B?ZzFJYWo2MnR3L0lmZHZOdFN2ODhiTndlTUNoaUtrc0pVOEVHM24xTVhuYVl2?=
 =?utf-8?B?YUJpRDZCbG1qSUVDMVUxcjhXQkp2dXd3RkRlZmZlU01BVXdjZUo0QXdrK0NK?=
 =?utf-8?B?MHVWUGViRnhSbG12bnduN25TbVpvNk9FV0l1Syt5Y2paSmlVVk9HMTc3RDlo?=
 =?utf-8?B?K1hQRDdaNTlCd1FyMXF3eVltbFEwVjJodUxPSkloRkFCOXp0QVpsTEZ1UkZk?=
 =?utf-8?Q?nNFnc605CPobKv9jLKp71FI=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 452bd994-9421-417a-a7be-08dd2ba8fba6
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR01MB8193.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 03:44:53.4205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v3h6fBB8MM30/ZOGR1xKOo6H+9fIuoO/B2QXMS9ckNSG8a/6FFQJ4wPKnsf3MY+ImzsPk1hJrXNaZvFBSfmBALuWfCUEsKHmRxInxMrMjc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR01MB7095
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 01/01/2025 23:54,
 Cosmo Chou wrote: > Move smbus_cmd assignment
 to the end of process_smbus_cmd() to ensure > the new command is not lost
 when complete_response() is triggered. > Thanks Cosmo for the catch. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.100.105 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.100.105 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.100.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.100.105 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tTb1e-0008OU-Ub
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Move smbus_cmd
 assignment after cleanup
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: openipmi-developer@lists.sourceforge.net, cosmo.chou@quantatw.com,
 linux-kernel@vger.kernel.org, minyard@acm.org, potin.lai@quantatw.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 01/01/2025 23:54, Cosmo Chou wrote:
> Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
> the new command is not lost when complete_response() is triggered.
> 

Thanks Cosmo for the catch.

And, IMHO, the root cause is the memset() on part buffer called in 
complete_response() is not quite correct. In the current implementation, 
the complete_response() should only be called when the READ is 
completed, ie: only on I2C_SLAVE_STOP of READ transaction, otherwise all 
the info of current on-going request will be mistakenly cleared as in 
this case.

This patch is good and I wonder if we can make this a bit further as below?

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index a14fafc583d4..310f17dd9511 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -292,7 +292,6 @@ static void complete_response(struct ssif_bmc_ctx 
*ssif_bmc)
         ssif_bmc->nbytes_processed = 0;
         ssif_bmc->remain_len = 0;
         ssif_bmc->busy = false;
-       memset(&ssif_bmc->part_buf, 0, sizeof(struct ssif_part_buffer));
         wake_up_all(&ssif_bmc->wait_queue);
  }

@@ -744,9 +743,11 @@ static void on_stop_event(struct ssif_bmc_ctx 
*ssif_bmc, u8 *val)
                         ssif_bmc->aborting = true;
                 }
         } else if (ssif_bmc->state == SSIF_RES_SENDING) {
-               if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num 
== 0xFF)
+               if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num 
== 0xFF) {
+                       memset(&ssif_bmc->part_buf, 0, sizeof(struct 
ssif_part_buffer));
                         /* Invalidate response buffer to denote it is 
sent */
                         complete_response(ssif_bmc);
+               }
                 ssif_bmc->state = SSIF_READY;
         }

Thanks and Happy New Year.
- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
