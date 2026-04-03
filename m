Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH/IIeqcz2nvxwYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 12:56:42 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96910393700
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 12:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:To:Date:
	Message-ID:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2IafmibM0fsRi9pCgxNFLCGjWaU4BT03xtKnXy0RYjg=; b=U/uEYxO2uBaygixQA6mNW3Ox0F
	EkwvjxMrZMHnb9yxPUJmL2AaNFBPSHWaK8ie7fwlDcKc3Kq2Q4/A8dyz3D+cRDDQcjxXWhNXjQdW2
	YKqH8MuhsMwPrHRv8uF1lm/mXJOZfkHBOQr//OVOJSfUzJuSNZDdBtrzckwKb/+xq3S4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8cCT-0005hK-Qh;
	Fri, 03 Apr 2026 10:56:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1w8cCS-0005h6-93
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 10:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i4NejlR0LIJaNcArSS2lqFifBYyw7q+0MQ9XqAhDihw=; b=OgK6/v5GiNgxqecIrH/40lC349
 JkIQRucWifM8G+fM5VQcVCB/R0bKcVlxVH2J0nPyZZ7gXKNlbUi00GBPXzB6FOgZks0BK8sRh53BX
 wFzNSZnOUcNg2n/3/06QMdq2QEwZAXfEiOfp00Ly7IJREElkwYdH7vnzkS0sPv6+moK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i4NejlR0LIJaNcArSS2lqFifBYyw7q+0MQ9XqAhDihw=; b=PJUA+QbSqHlR9VIotJMiBmnugQ
 P1WS536wsUZms4Eahnjy4sXhu8DgUNaoX4TXUDBmPXxgINKGGyQ7Rx4B/mkG+48JQWMYo9sjh2K8i
 tcW4yBlpsGVPmDHIWvrYuUsXLEpVg5MsPD8BE8N2gmvmFQv73xxEAGZfgsmyAkvFx26Q=;
Received: from mail-westus2azon11020113.outbound.protection.outlook.com
 ([52.101.46.113] helo=CO1PR03CU002.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8cCS-0005tk-Kh for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 10:56:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HWZjyyU//fZix4Js/dOJ3PkD1zg+AxhVLPPqNyoTBu7feC7+5Nwi/3OBvgupXl9uH2Pxr3rRDC8zLIhiwA7wid9CvR1w6wWx1kjukapEpYiO2Yda0+LUVQ7Ky+0XTRb0yL8RWgccJeAFQcFDCLsPSstDKV1MTs+ITVWQWwqM6YzDNOm1GyT7Oa+W5mTLDMGXrn2zVbRV6xtL+oTKFFMa2YBA3PeCfDdT8DDb5MzpAekury4l/VK8ETTbP2Tg/72fIPTmttXyAKvLdJwS/SdhfRQJ5FXqPQilzf36CaU0DYSui11wXhRct4+C5MKENTRfa7yb81QYKVxngSX3vhGVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i4NejlR0LIJaNcArSS2lqFifBYyw7q+0MQ9XqAhDihw=;
 b=TcmR6TH9UAnWJ9GyePpbq1TZrriJ3jhxqVQ1IACm39XndsDxoGSlGA3YmJ8ol2al0nqxIChSZC+0swcu75OMD352MKAUd7RlLDfdwU9zyiVrNu+kHkanb3aK/8UvGMoTdqmcYVGF8VOkDnzgmYfUMREnYQnynl9XO4Px002D0PWQCxVqC2b+UNyiv2owSzn1j2+rnIKUzUQqKk9jbRJjcS2gT5R6/Ehla9n4jOHbbYGZtjQHQfWpTn+t0Y6hnosqbNMr/u7eTaPrIJgGVUCpzqQYdxu9rEB9hU8RxvleU2xcqnrld8NZdIZVVGvcYeWLnLhKNf4GPAxDBVoUu9HZUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i4NejlR0LIJaNcArSS2lqFifBYyw7q+0MQ9XqAhDihw=;
 b=hHljZU/u8TJITls8qRb8MDlxGeGkkpqKghUsWJbe7Jgae/FkcvZihUfDxV1JLUh2WGJpBTxI7L83SRe7tant2DuPEqjRL2pehACJ9tzspNw8lxPTyWH71a3dCU5KhvTA2Ir6v40NvRa88WC78aXJtBA4OnbfnApH/vPJyUW2UFQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from LV5PR01MB9418.prod.exchangelabs.com (2603:10b6:408:307::22) by
 SN4PR01MB7519.prod.exchangelabs.com (2603:10b6:806:206::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.21; Fri, 3 Apr 2026 07:22:53 +0000
Received: from LV5PR01MB9418.prod.exchangelabs.com
 ([fe80::7c7e:35d5:73d6:89f6]) by LV5PR01MB9418.prod.exchangelabs.com
 ([fe80::7c7e:35d5:73d6:89f6%4]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 07:22:52 +0000
Message-ID: <61e671d8-01a8-4544-93a1-73e30f30ae7d@os.amperecomputing.com>
Date: Fri, 3 Apr 2026 14:22:41 +0700
User-Agent: Mozilla Thunderbird
To: Jian Zhang <zhangjian.3032@bytedance.com>,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
 <20260402110435.3589408-3-zhangjian.3032@bytedance.com>
Content-Language: en-CA
In-Reply-To: <20260402110435.3589408-3-zhangjian.3032@bytedance.com>
X-ClientProxiedBy: SG2PR06CA0199.apcprd06.prod.outlook.com (2603:1096:4:1::31)
 To LV5PR01MB9418.prod.exchangelabs.com
 (2603:10b6:408:307::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV5PR01MB9418:EE_|SN4PR01MB7519:EE_
X-MS-Office365-Filtering-Correlation-Id: b6c015ce-bcc1-470e-a6b4-08de9151d172
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|55112099003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: oBdWImD5fLGKlHNgkPcUxO5JVUDSHOnTGjS3dsV9ZqUyNiadtkD/iACaKL7LGc1/juN0uFTK57zi3555V2t3AV+rZteSRhZT3g9UByGs/rPmCOV51lNXR2eCamxptqbW6M4kknEzP5K+oAPC3NvvHoP+LmN8FiJl/m+SywXpmlIahj9l/99GIUZK+xZPRkpDaMtJUX8HKKRp1/fTHOHPNmcAyExdqDXb+Vi0+CdL5yfhhEP1z3MM9IZcSznuOytGoTic7uFh8Kqu5INdnAkUvSaFs+ogFw+60KVyT7+wPrtHz5V//wF2Rpp8m1lGf21LVYyw3tW5B0NOgItEjOFrZflz3dT8toqtHM/RAV7KZbqS2kiD1JDqL7BJeSApz+mU3iStw/a44dXhTacnX2WIuAXXqCRWKmHzqlfnKE3iO0GwBki6ZaQXlpJLtih/qirfAfShjlclr24jZhO+o0J9/P/7dADTlFBqgGW2UI/4WYwb+pp7mfZ3kUybykpnIgjS3kKlbESZGA8i5dsVb3KMeHs/jSvnV9RdTxgtyxZGL3ZzdlLjurtawjBHEiMsgIC2YbvdMKMacD0UN0y6xEfeOCEM866gpiymOuuvKBJ+qFU5F1kRPWQDKYUAMqsZ5XKu6yNXtB/HABQ+zWVOxKwcmpth+KPWDcS/AJm60Nra3icHsf6bDaRtzA+kFXuQ5kQNF1alITqoPK1N6y4XGNYtkSe2xnKmFQqXisfoCqQL/PQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV5PR01MB9418.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(55112099003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2J1MlZMQ2lFNS9qWDVvTDFDbnk1UmltUDJucnVOYW02VDZmVmZpR0NENHNC?=
 =?utf-8?B?OW1EcjMrV0UwWEdJUEdONTlNaHNCZ0FhVjRtYk5iZUtiZW9GcHRySlprRDZ1?=
 =?utf-8?B?cnJodnprdFc2emh2TzVDODlGTlVkamtBTFFyVEp4ajBXZ3lTR2NxMmZJZU9D?=
 =?utf-8?B?OUp2UFZBZGlwdXZ5bGNzR0U2NzFlQnFzMDBvOTFXTGdiNXRDTklSRjAwalRk?=
 =?utf-8?B?L0tkOWZ4enZ3MEtPeXkwNEpheFk4eW9KMzhFQjM1QTU3SmEySEoyVHI5Z1Mx?=
 =?utf-8?B?TTQ3d2JMT1QwQnRlKy9iMGJBN3VTVmdhMFg2ZlVHSGlDTVN4N0daV3RKdzJ3?=
 =?utf-8?B?cnBMYjc0eHliRDZ2R3pVRjZNQTN3a2xOZjBiUjQySmI4T1VPU0EzM25EK3Rs?=
 =?utf-8?B?c2t3YmRnTFJpQTNGMW5tNFhlb0pkRjdsVyt0Q0tzd1RnR2doTFJYc3ZTL28r?=
 =?utf-8?B?TjJsQ29mbUYxS2IyN2FrZWQ3S3R6T1JLOW9KMEJPN05NTitUQmUxL0YxcllS?=
 =?utf-8?B?eXVNWEhlU1hmWWhDblZadUhaTTNiRFZGZkNkRS92UXpuSDc3ZzF1ZUVjUG00?=
 =?utf-8?B?TlZqV0ZWZERYSXpjMjY2bVV6RE9UT0tBdktIRmwrejhxQnhpdEsxVnBtSkhu?=
 =?utf-8?B?dHUvbTkrODdDaldwYzV2eFFZMWpxYmR1ajlETVRSN3ZiblUwVUN2eGYrQmFi?=
 =?utf-8?B?THRiSVEzR2N2TG5IdGlPeERScE4zV1Rka0ZaNU1mdG5NUFltdFp1K3NvU3Z0?=
 =?utf-8?B?THlJR2JYN2tYS0VsNVJoQUdxUmZ5YmJjZG1HUDZHRkxIbFJZeFRnVHRWVGFw?=
 =?utf-8?B?cHhWVjMxbndHOWhvcE5xTTJLcW5JYzFFS1JQdytIQ2M1Q3gzS095S1J5WUZC?=
 =?utf-8?B?RTZFby84U0pFNUZQSXZ6Um1PVTJveEl3anZHelRWbi9SZTVPUktRQzFVd3Vq?=
 =?utf-8?B?S1NxWkFFN2t1M3hSVFRTM1pqZHhOZDJvbklxYmhSaTFYQzF3ZzRLMGVjT3lM?=
 =?utf-8?B?eGc0Q09JcFA0MUM1cFdnbkRUd2JPTnJTUE13ZlZIWWh4ZURtNEhNbTUyMnhl?=
 =?utf-8?B?ZS9hcmwvdnd3L2s4T3ZodGJGMzlrdGJSS0FOdUREalZtQzRhZmtWMWQ4dUdv?=
 =?utf-8?B?YWI5R3ViWlU3YTFYUFZHOVlKRjNJUEtmY1I3anBYcUE4OUZTdVNZLy93NytG?=
 =?utf-8?B?VXBLanRmWnZCOGZvSDhEelNjWEFScmo3WktKcGpKQS9OZkQ3Q3NKOWcyQWZG?=
 =?utf-8?B?QkdzdU01dGkwRE5xTDQvRjlYaWdmcGh5N2tzMnlvcnRaeXg3QnBBYnorck00?=
 =?utf-8?B?TVdDcFlIYzA2V2NKK0gyTnh6eXQ3M21xbWZhVXdzV2RRSTBRY3dpc2JWZlIx?=
 =?utf-8?B?b1JzMW4rYU5CUEtwTUo0NEhhbmwyWjBEamJiT3drTmRUTUhzdEI0SmRUSklI?=
 =?utf-8?B?M0xHN3B4NW9tSkV6Rm9WaDFqa3QxbUxLTXlRVXJLSkIyb1pIYXlzTjFWZkxO?=
 =?utf-8?B?dTZxOVFwbGtib1I4bDVUMHRJZkdJNXVITUdZajMzYndrRy8wV04zN01HcUFP?=
 =?utf-8?B?ZndBSFFIZ3NRYWxkc0tmalVHcHVqSzExSm5BMnNzWFF2S2J5TGo3SmMyeVpL?=
 =?utf-8?B?Ump1bURtd29IazNVR1pJRXhTZ1hqcnhVTjdnaHFqTkZEZXlYZjRVajMrOFZ0?=
 =?utf-8?B?bmFDOVpuYmNLVGhmYU96TWY1c09CUkFRUnhRUEluQktVb08rK3hEOGdBNzhu?=
 =?utf-8?B?c1d3NlNMdEt5Y081cDlzdFRIYThreHBoZkNjbURVN1p5MDhBcERyeCs0a2tN?=
 =?utf-8?B?bWlHZ2JOMEFpR0t1b0VLbHluYlFsODRCWUgrRCt4TGJaMm41eGhZb25ydTBK?=
 =?utf-8?B?UVRJSnZaNE45YUhJRzBKQmhLaDFtWTk4cXVrRG1FWHNxcExqemFUZ1gycXh4?=
 =?utf-8?B?ZVY4eGtwNzdjYXd4Y2E3a2RBbkVFV012KytNWmg2Mitpelg5VnRvZGUyaVYy?=
 =?utf-8?B?VWFON1ZOa3BOVTRsMWNqOWhlaFpOcWh4WitEMU9abnFTUU1HK2dUUkQ1ZzBo?=
 =?utf-8?B?Vys1Qmw0dEVlT0pEekNFVkVsTy96QWw3Tk9nYnF3djJWcFBLSlBySkpaeUdO?=
 =?utf-8?B?VmRNbmFxRVZlcnhTYnJMNlNOcEQ4UElMUDM4L04zM1hod0lVVEh0SFFxeW5t?=
 =?utf-8?B?VHhUVGxub2lHWjhiWFFKY2IwQkxIa0I4a2MwZ1NiUE1nWUEvYXczU3VDNCtQ?=
 =?utf-8?B?SFRhOWZRMDJmeGZENVlRdHo5M2lPZFlBelhCQXJUSEYyU0VPeThWSUFPOE43?=
 =?utf-8?B?Ry9qYURUQWloSUtUNk1OcDVybWl2ZzlLZDdkMFlXcERTMWJONnBlVUsxTlRi?=
 =?utf-8?Q?AJcGLjB/Udk2LLOw=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c015ce-bcc1-470e-a6b4-08de9151d172
X-MS-Exchange-CrossTenant-AuthSource: LV5PR01MB9418.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 07:22:52.7426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uEyfIatBQiv6VuGYgao+KwQNZkbl9jb66riVIiCbKLmB/TUmU6qWeZsYMFtwxE4w27h7RfCDIUsvh8eTV5cusZUe88bPjiBt00Du64nUVDw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR01MB7519
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/4/26 18:04, Jian Zhang wrote: > A truncated response,
 caused by host power-off, or other conditions,
 > can lead to message desynchronization.
 > > Raw trace data (STOP loss scenario, add state tra [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.101.46.113 listed in wl.mailspike.net]
X-Headers-End: 1w8cCS-0005tk-Kh
Subject: Re: [Openipmi-developer] [PATCH 3/5] ipmi: ssif_bmc: fix message
 desynchronization after truncated response
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-7.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,os.amperecomputing.com:s=selector2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,os.amperecomputing.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[quan@os.amperecomputing.com]
X-Rspamd-Queue-Id: 96910393700
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2/4/26 18:04, Jian Zhang wrote:
> A truncated response, caused by host power-off, or other conditions,
> can lead to message desynchronization.
> 
> Raw trace data (STOP loss scenario, add state transition comment):
> 
> 1. T-1: Read response phase (SSIF_RES_SENDING)
> 8271.955342  WR_RCV [03]                          <- Read polling cmd
> 8271.955348  RD_REQ [04]  <== SSIF_RES_SENDING    <- start sending response
> 8271.955436  RD_PRO [b4]
> 8271.955527  RD_PRO [00]
> 8271.955618  RD_PRO [c1]
> 8271.955707  RD_PRO [00]
> 8271.955814  RD_PRO [ad]  <== SSIF_RES_SENDING     <- last byte
> 	<- !! STOP lost (truncated response)

Honestly, I have a little concern about if there is the case. What I 
think is that if there was no ACK (SCA is not pull low by Controller) on 
the 9th clock pulse while Target sending data to bus. Target will 
release SDA line, eventually, there will be a STOP condition and a 
SLAVE_STOP event should be emitted.

- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
