Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADA9356D3E
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 15:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NYLUY0JDedAweTezIVWr/RnoxY/Qae1Gkftw3fwnq0g=; b=TMCgEnRQ/tMl4BWRAuxo8S18qG
	bnHldF3w3eJ8h33X2LHh14g9iT9GhMBv7/rlC/tb9bUPONFKaZmUT/MhnP/nk0HjANH3rvWwRjhe9
	y49jlRSgS/mRR9O3DPkGywF/Th+eIRdoSgDkz/sO+6NLMxRbBEJng8IkRPCI8yTo0SqU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU8Bq-0007XN-Ma; Wed, 07 Apr 2021 13:25:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1lU8Bp-0007XG-KK
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 13:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3a29ZpwxhPwXlxpNgVldcV+Rpnd8BsEHALPFTBp58Bw=; b=K8dPq4Zt8bBqq+ssG8HXAFxG2i
 jgB7QmF6rKFNP/0K8qts+Sd8Dwi+SQcEfUOECSS3tBR+itFu8/D1Nj361jmoa6hp0wUWTrIet7QVX
 CYV4LiS65GHS8XV2DJFSRGXjLyXD8gBLe+0aGbOGh/M7P3tlvLEBSn7yaHi3HIRHU5v4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3a29ZpwxhPwXlxpNgVldcV+Rpnd8BsEHALPFTBp58Bw=; b=L+WFIRjSuJJMh8qlYlwC3Gdhae
 vunb1N3NnHFPDjQIyxN5ZB65nA+DpUsE3xTXHSR55V0lSihro5VVOIDY37e+s1mxrj9ls3rB5dc/a
 7B3QAdpy85gMcjDe2+rVg9wzUy+sOgMtL9GViG/0DeKLCP3QjWg94mWTiBfHnVokmJaU=;
Received: from mail-dm6nam12on2122.outbound.protection.outlook.com
 ([40.107.243.122] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lU8BX-00GWup-7S
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 13:25:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sk3oi2qzDX8EhIq9+X9ys8xATAD98o/1a2J8xS104OOaztdy9fqF7byxtwC3VLzYA2gi0ka2goSJ7ZZon8dHW74ZhcaAAk0QLsO8zRkn0vUnEnmBv+7kZJl50nKXM0204+0R92CHq1tDmP3UIdZ2axAAHoMw2miDOMyMEtjI482L0nwCXCNw/tJu9JAd3ITBqUuB4ufuUfJPU0vgS9AcfF471NRXh5N8JMaRIiMHfbc8hO88wAbdAK0pDO2etsq7UWuO5L1GZudNB4LGS692EgJdfIXaZq43cFfWm8VGCqWpn1iS5fUiIe3HItPvfybb0JSDt0/BFdVHXqEQYLK3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3a29ZpwxhPwXlxpNgVldcV+Rpnd8BsEHALPFTBp58Bw=;
 b=SL2ZGeqr7dXlJijfrf0cUiOMXYGawpAbYfQt7XwxHJHSoS/obHFCLwt1T8qmy/Fc1ACklBtr+YXz8tElBmHwFbMVzeNna3ByFO2AC2uMP4Ai/NNanDJtmja7GmoDT1Q5g93c++/dGsRZNA4wP7vUxaz0l+zstkVztNt71uNQPZ6pYbz5OwLhSx04zO08ohFkrDh4w/vZOS3NjvZuPOhJpobiUld42ObMwWHHeWv/N1uHwLRD0eDLqARi67qjW6aN58vl6JZKYcAOUYfTHTmbloRJzwj1ii7i5dbYC4hteuSdkNI6c2vTQEbzxi8Y13BIzNyze0l35/App5EAFECfKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3a29ZpwxhPwXlxpNgVldcV+Rpnd8BsEHALPFTBp58Bw=;
 b=WUJuUm6tuAu4+VisFIptbnZMfjWAu/htZ3+zntik/U2uhwT18NXYfMcSILwdMhymT2y7X/WG8OVIL8K8XcUlZaDdPx+DCsMs9Da5FRuNd+GL+ZPOWIuhfHVdKfCOmMIwf3t5eq1og6a/FBC4Gc/ggy9dJjpeT7IEsvA417bF0NI=
Authentication-Results: os.amperecomputing.com; dkim=none (message not signed)
 header.d=none; os.amperecomputing.com;
 dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MWHPR01MB2734.prod.exchangelabs.com (2603:10b6:300:f6::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.27; Wed, 7 Apr 2021 13:10:02 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.4020.016; Wed, 7 Apr 2021
 13:10:01 +0000
To: minyard@acm.org
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
 <20210402142124.GV507977@minyard.net>
Message-ID: <0e7fceff-4a01-5cb0-72eb-8b47d598f1c3@os.amperecomputing.com>
Date: Wed, 7 Apr 2021 20:09:50 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
In-Reply-To: <20210402142124.GV507977@minyard.net>
Content-Language: en-US
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::18) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.38.33.17] (118.69.219.201) by
 HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.3 via Frontend Transport; Wed, 7 Apr 2021 13:09:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28630cce-ceb8-4ac2-f653-08d8f9c67380
X-MS-TrafficTypeDiagnostic: MWHPR01MB2734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB273487ACA3C40B80CCF95C8DF2759@MWHPR01MB2734.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ETv8uoc6Dkbc7a2RBZXF5b4N2k+daHxi7QQaIIPTS9Avr+JkxHInO9D3RLbKi35tDMaEqZn6IeHxLDx8Qa0L7eFq7vxEGK+GiNTAtcHakXiO2ssMmZ+heEmICwGJjfSjrq6luuRc1EddOusCeIQAEpUEhLQoqmjFbeeRlhfgNEJJe8MiyulZPaEyD23ObhnWolXJ7ckVCYIP75e3E0gWzBBofjkcDtpATyn4LdeDCFANt4Ax2zcQBcmX/Vo6EkcFdrOEEBm1G1J2WaTc+rt0/J2ZFR5GARe3oJT1XaFHI5YzdR/JcGZdfRkFflMcf8aUK7qbyERwPo0P2dj+x47mUzz22Re5pl8YeiIwFBODIvLs1xwVMtn+hXKYOYBV0ORSMlZfKlCxVCno6/GsE3GtNt+mTjdiw2JZGx65O/Yt3yMDu04jUt7QBzjzedBBM+qVEPQV4zn+3MRd0kY6UxVXU1xw14gOz9/tYxxERB5jB8TuLMBMKNgyJQpUdlAUQN1iyX2tmoGyk3gul+u1exy73fHc0156p2ekbZQdoH66e0BHzDF1OnmOgFy2mOSdBdcMY+G9blJGzNK70VDAqvHw3iRsVDeP7Sh80EkO70eMfonIQSpabl8eN85qd+0O/IBRW6i2S4ctqdRV9E3c1hIi6FdQRWIkZrVgovKfiPHTVRUbqnC2pwRoBxrjN+XYXq3QmYKwbXwUdKUYsFBjABfKYyJDtqFuF5F4vqJWR8PPOP0/oiV6vj8ua13NuQ12giKEzEErMLU8a0u+Sh7VJbC71nBpQCFEgjhHmX0Mhq4mDO8YG1cUQju1rgidLhMTBriK1sjCpiUC8Otu9oGaNsQ3ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39840400004)(136003)(396003)(376002)(366004)(53546011)(31696002)(5660300002)(83380400001)(16526019)(186003)(6916009)(2906002)(16576012)(66556008)(8676002)(54906003)(66476007)(66946007)(38350700001)(6486002)(38100700001)(8936002)(7416002)(26005)(6666004)(966005)(4326008)(107886003)(52116002)(2616005)(956004)(316002)(86362001)(31686004)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?L21jd052WDV4NTE1Zm04a1FsOTIxTkVnTDVqY0xhQUpEYjhlU0NoOFVCZEJw?=
 =?utf-8?B?US9Qa0NnS0t4a20wM25iRGdyVHk4RjZ0bW45bW1CK3IxUUtnMWlDMmZpRzQy?=
 =?utf-8?B?dlp5ZXdXcFRDMEhsOGgrbU5HNEE2QzByY0l2QUE3Rll0TnhtTTdqcEYreHNq?=
 =?utf-8?B?Z2ZHYnFYNWp4K0pacDN2K2poMFc2SWFGdEVlNUJKcjdOQXhQeW9Oak9RMk1j?=
 =?utf-8?B?REtQL0llakFMU3hEUDdlRmxCVEZpL0Y3UWRhbVBxaXk3czJhY1Q4elkxY1Fv?=
 =?utf-8?B?WnBSc2NwdkhWc0FZd0RYVjVMSTBUbE9MU1BDZ2l0OVFsOVJibkdIVnBHYXU5?=
 =?utf-8?B?U05zQ1NBV2xCUGtmUlVwSy9RVFFMLzdNOUpaYkFGYjVURjkxOGp4UkxhU1Bq?=
 =?utf-8?B?RUEzTU5PZ1FVa3ZJK3E0d1lDeUFmcldSSXc3OUg0U2VOdVNXOExyM2NkZTIz?=
 =?utf-8?B?L1pIYlVGTmczNnluSzYrZk8yWGxJUklFOWtOUU9Pb0dZUG9yMkVTcStGZmwx?=
 =?utf-8?B?bEkrcFVFZzliazV2WDBPajVLV0FpUmhFWS8xc1ptaDFpdFVkOUZtY1JPSDRI?=
 =?utf-8?B?MDZ1S3Zock1vNytvQkRvR1dXVXFLWTRkM1pTaE9LeWtNb3lWUUZGVE9JNlFZ?=
 =?utf-8?B?VXBBdGhDYjNBYXhqMUZzQnFmZXRrbVkvU29sb3pUU3RtaVBQWFp3dS83VUJF?=
 =?utf-8?B?U1RIQjZJaURFSjFBVkdjMzdNYmZwNlJMQnVjWDFqTlRXanZZSVh2Z0hxc1BR?=
 =?utf-8?B?Q09yQ2ZjSXUzVWdpVmRPQ0l6Y1dubzllTWVhWW9mVHV1RVJ4Y1oxV3pybTNW?=
 =?utf-8?B?dE5DWkJyaEo2YjBpc1F3T1ptU0RxSVA4MkkxSWpnU0poSHdEaVh4Qm9nbmVa?=
 =?utf-8?B?SytmKzJEQ2QzMWNSNHcxSDA0Z0hVS0RPZmxhT1NhblVEbzhTTG1WalFmbDBp?=
 =?utf-8?B?QzVvZFIvWmNKQVZFR0NKUTdLblJqZ2RCcDgvK3c3Z0pDSWIwWnVJSnVRYVJz?=
 =?utf-8?B?SUNiZUNRdk80N3JOOVgwTDV1T1RUNjNyWFNURnIyRTdLZnpxNlNkclUyTGJh?=
 =?utf-8?B?K3psSTVOeFpaN3NhdEJET2FZY3VDT2x6QkxXeHp3a3JyWmtPZ29iYzBVRXRM?=
 =?utf-8?B?SDRMN3VSYS9KWXFxcmFKMXBIRDZ4QlZ2VVRXS0xlNlRxUTQ2RFBQeFlLSGxo?=
 =?utf-8?B?UUwzWDF2ZFdWWm9PUURIUXB0dmkwU0FOaXA5V2VEZG9NYTZLeGZxdEhpRWJq?=
 =?utf-8?B?QjE2WTF4L0NYclVUSXdMb3hUNnVOWWIwT00vbGN2cittMkFmbndENldHN1RE?=
 =?utf-8?B?QmdUNjJzak15Qmhmenl6NEJBc2xXS3V5NFJuZUV4aWloazVyRlFvTzAyUFFZ?=
 =?utf-8?B?WDM0Q2hxeVZSL1JTcXZTaXhrVE5qbDhhNmJYczV1Vm1LYWhMelBIamF5SnAz?=
 =?utf-8?B?eXFwZ3lyOFJRZ0o5ZUp3UExkSEZkbnlUYm1SNHdlYUxYT0VYdjUzWEpDZnVU?=
 =?utf-8?B?bU13cSszSlA4dWpqV04vbTVaS2ppRm1xZFhkcEJYY0lxTU42TmNiUmltQjRp?=
 =?utf-8?B?bGhUSjdqSjNrYlVQREFlNXdWSUJQSXV3VlRMeUZnRFd2Z1k3VHpEeCtXWTRx?=
 =?utf-8?B?OXVlSFNpVGljUUhlR3VZZ2ZpT3I3WGJoa3NZRmVGQ1VDYWhXbnoydDJXM2o4?=
 =?utf-8?B?aUxzYWRoSzlOU2x1Q21XYTFRWTJXTkE0aWFZZWNKOStkNm1udkNTQzhHNVhU?=
 =?utf-8?Q?GP12p8n/zESfaNVRUqk4twG91IxytSGRqsiKmyG?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28630cce-ceb8-4ac2-f653-08d8f9c67380
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2021 13:10:01.3735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Smz3mGe5/PgE/Tbhmfp7KovILLQx3GiGymFDRx4aGKKh0NnPuVGrtK+Ik7/UXfYYyWYpw9Zsxm2NK03auY8+XWhiHfo7SzajzQd872qGXO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2734
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [118.69.219.201 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.122 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.122 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lU8BX-00GWup-7S
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] Add Aspeed SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

Thank you for reviewing
I'll put my respond inline below.

-Quan

On 02/04/2021 21:21, Corey Minyard wrote:
> On Tue, Mar 30, 2021 at 09:10:26PM +0700, Quan Nguyen wrote:
>> This series add support for the Aspeed specific SSIF BMC driver which
>> is to perform in-band IPMI communication with the host in management
>> (BMC) side.
> 
> I don't have any specific feedback for this, but I'm wondering if it's
> really necessary.
> 
> Why can't the BMC just open the I2C device and use it?  Is there any
> functionality that this provides that cannot be accomplished from
> userland access to the I2C device?  I don't see any.
>
> If it tied into some existing framework to give abstract access to a BMC
> slave side interface, I'd be ok with this.  But I don't see that.
> 

The SSIF at the BMC side acts as an I2C slave and we think that the 
kernel driver is unavoidable to handle the I2c slave events 
(https://www.kernel.org/doc/html/latest/i2c/slave-interface.html)

And to make it works with existing OpenBMC IPMI stack, a userspace part, 
ssifbridge, is needed (https://github.com/openbmc/ssifbridge). This 
ssifbridge is to connect this driver with the OpenBMC IPMI stack so the 
IPMI stack can communicate via SSIF channel in similar way that was 
implemented with BT and KCS (ie: btbridge/kcsbridge and its corespondent 
kernel drivers (https://github.com/openbmc/btbridge and 
https://github.com/openbmc/kcsbridge))

> Unless there is a big need to have this in the kernel, I'm against
> including this and would suggest you do all this work in userland.
> Perhaps write a library.  Sorry, but I'm trying to do my part to reduce
> unnecessary things in the kernel.
> 
> Thanks,
> 
> -corey
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
