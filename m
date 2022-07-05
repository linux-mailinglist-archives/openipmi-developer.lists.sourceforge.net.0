Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB4D5661C6
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Jul 2022 05:20:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o8Z6Z-0008N2-JF; Tue, 05 Jul 2022 03:20:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1o8Z6Y-0008Mi-5e
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Jul 2022 03:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:To:From:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D2wQKYfGYj0Z1ot2IY13ErX0c3h6VTsplYzGatKRLSQ=; b=R950O+cBI+n4CDKbL/Hrgypv7b
 P4P3UbhesVJV4FANuY/tFwE/uMM6mn1RChk3qHHzO5wj9fI7LFiOOmmF1i9CQzTT1S5ebbKyhK50Q
 z7VrRv0enoLsfvk8BdoTwrTSuAgnW2ZmBpz8ZQhbti1Q0Ro/u9lFzKN3oBT7hbibJr1A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D2wQKYfGYj0Z1ot2IY13ErX0c3h6VTsplYzGatKRLSQ=; b=Zoh0txvne2DNmTSJr4z0wWWDKu
 cxWxhykYcfbw8QaH2+MesHdrUORHuUdTyRjGJq+tBv3gpJI/YDBo2TJKG7t17c2iXswEf91XWhg7B
 4CIw3S2LK+3d/TVEvZLfHFG1DbXo80Ei6mvyNSqkdm9xcwl8ChGG6pZtoKFzQ487FVqQ=;
Received: from mail-bn8nam11on2041.outbound.protection.outlook.com
 ([40.107.236.41] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8Z6U-007ZSE-0b
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Jul 2022 03:20:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CK06wdyCPte0TULSDHW2NT/O827cNRMOLkTpoeDtVFkgjm8U1cealTnapCNlgGQqsLI6AYL20CdfpcbCW80l77j+GeC8j93V5Y5LSV2Whc0balCJYrl/e0+l3x+MzunFnG5XIT6axud/j6uMB/5EFWaUAV0vdU+Nu2Tq5Y2DPt3QqjPOpBDC2GqdlS2q0SBbv5jLLX1px5Tu8sOBbxZjS9SvBUDmPMtqKa9fvfXVO7qcN962H4ya+KVQsqe9Ns0nWBWusYpjG5jEZARKj8o4WroieBdcQLUj5c+WviwLdBqncyGzrepO50LFdGp7b5PWAeV7EJchsQPW3w2HVRmoLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D2wQKYfGYj0Z1ot2IY13ErX0c3h6VTsplYzGatKRLSQ=;
 b=aqItT83KW0Malv8PbvXj4GcJcXvz5Y3ybaPM8jrhuqUXIPzaHEJd0pcLNoPpEQLe0XN22ET7G13feDTgVb674kQ621BB8c0xudL6foPOs4RPMYkrBMBHt01LGrxEHxbsjEGBsdvYEw4ybCBBrZQwDHYAwRmZ0nZVhxeJiWACOY3nkGQGku7uUrvuPX/jyQjsTeoJ/Kd6VMtjBmIQa8IzyBr6V0S2FwhEphpaACVpT8CaTGNd+LvNCRXd8rNJ2SU56dLm6kgZZFaMhaz3GM/z8EnSv25axuiqBMG2x1UrSCguFu+yP0jt/+1i8XqBocMo09v73mB6d+SLdRe09FW+gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2wQKYfGYj0Z1ot2IY13ErX0c3h6VTsplYzGatKRLSQ=;
 b=GumkVZdpruzWQbyu7YwYuDsbfzVKgGZf+QKeWc73mW7fRKwss63Pa6XfVEV2E/A+QsVEbjdm/xPMORL1D10LO1P7xIYucg4jc4bw4VlH99wIp5cpgFuD5YkegZPWx5PsUXUdRySWTXCTgCf4l0YzcG4Q868yvJ9BR16mYCKhOXE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 MW2PR0102MB3404.prod.exchangelabs.com (2603:10b6:302:3::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.18; Tue, 5 Jul 2022 02:45:24 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e%8]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 02:45:24 +0000
Message-ID: <556fa9e1-c54b-8370-4de7-c2d3ec7d6906@os.amperecomputing.com>
Date: Tue, 5 Jul 2022 09:45:11 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.0
Content-Language: en-CA
To: Wolfram Sang <wsa@kernel.org>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, Brendan Higgins
 <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 openbmc@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-4-quan@os.amperecomputing.com>
 <Yn+9QBoPdH8fMm/m@shikoro>
 <fc422a06-c035-f6e5-231b-74ea6afe8467@os.amperecomputing.com>
 <YqpB8A2uBi+4epHM@shikoro>
 <bf001ece-e981-3a06-53fe-6a8b637d69fe@os.amperecomputing.com>
 <YqsiRW78NAL9rX9S@shikoro>
 <27f5999e-40a6-311f-20f1-331a0f4447da@os.amperecomputing.com>
In-Reply-To: <27f5999e-40a6-311f-20f1-331a0f4447da@os.amperecomputing.com>
X-ClientProxiedBy: SG2PR04CA0173.apcprd04.prod.outlook.com (2603:1096:4::35)
 To SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1bcd87bc-17ef-4c12-d6a5-08da5e306900
X-MS-TrafficTypeDiagnostic: MW2PR0102MB3404:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tFN+cysuqhLkWHManmgIliKSssTIjLkO0zTDOp6RirCXwcMvjM7rwAn8No48XP+UKuGbqUN7vUNafAyuJYDAfsvRGHEMgE+vF9wJknOqJpI1W7Soi39Zps+rJNi3HDgj8+WRgPzE9+QXa9CJuqMScPJB6ed2Al40VxX1m0QVdvup2PsHLa7gQG196Eeb6GQsu/GxGMk18VDvSeS8GziOh/xIL6O7K3yVMsQW6LqSlmjGIXauM9iH4d6FOBIIDgB4qptxiuu4pK8dDnrzMl/BfLxqtFEJ47Qdl/Ad4wMNT8AuLETjkpaqGAhcy+PBFIUyI+J6LU0viXgGMaMjLphwV6UjZOE7OU1+oaHQkMKezfY5hRmXQahmzNhRX3smQD0OAiPX04GwdN7sHYHisONycvR5lkeu0on15dcEgVBvgUzHYuxWXUbzL0QFaywsTUL1AxE6Ouf6SlN6/wRDiBE0nc4dCyjb3855eMC9St/EYc0q3IuQPCA5QsqE91KVuQk11IsieZRm4SlCXYzYKhnF7Cg+inj/IWwfLFtOr0iwIle8OCzj5+QkbRFISQ8mCl4aY1yvQ8I0vGTObpd5ff26HZIZLnviJCuGT3FlDNhSIfT+ol522yTmL+culngQX+/ZBASAXXeT01I3L7J9yAHpOp5v9Z7TH/eLK9CWePAUpIEYCkrn47/DbdWLcbHmLBt9BjQQGg4SQlWXF4YIc9u+MGVQ69txdCMx7GhKCYe+rOGz97tSBlNH7jno8LkLVc6SK6P4lvGL14n1tuDMP0Ad7UfaIh2T1NBbMVSUC+tzmjSNJlSBnzETSY/PGc0PQY8eqk6Y3wTcprviH4bzzEChiO1FZGOMX5KaRPYAVnhZ3uc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(396003)(366004)(346002)(376002)(136003)(39840400004)(8676002)(66946007)(66556008)(66476007)(2906002)(86362001)(31696002)(38100700002)(38350700002)(5660300002)(921005)(7416002)(8936002)(41300700001)(83380400001)(26005)(53546011)(52116002)(2616005)(6512007)(186003)(6666004)(6506007)(316002)(110136005)(6486002)(478600001)(31686004)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUZkMU1tbVkvWHBMa2lKdElPN3dDTEpyV08zanlLNjkwcTVGeHFQSkEvbHhO?=
 =?utf-8?B?bXlLM00wSXJicjNEdU5XRzRPWm9ETXE1SzdmUVlNbG5FaW1KVGUrcDRnNHRF?=
 =?utf-8?B?QjdvQVZkcWRYTWVMNDg0SUZsV1dLU0RFbGNiOWVnYnhHVjdIajBaVjNaZHZB?=
 =?utf-8?B?RUwrVjFwYWd3aEJuSi8vdVc4ejBKckNLZ3ZVVVV4a3kvL1lBOG84a1dBc0Vx?=
 =?utf-8?B?Y2Y4UURGNjgzYWNtSDllTTBqQ2RRRGpnMVdNWDhnYlExcFdzeVBUVTk1Z1M4?=
 =?utf-8?B?U3RQTG0xeE1Bb2tXY1FKK2RuT3hzMWxzVnZHZ3ZMY3E5Yi9laXNxeER6VWhS?=
 =?utf-8?B?eDFBZ0ZrZzcxMkpQNDFpTnpmbEVTWGtNbVBqRmZlVzBDUGtHdk1PSTRvVjNP?=
 =?utf-8?B?SWZBQ3ZxZmtCQzloeHFkVndicnMrTituaVA5d1Nja2RheTlFL3FlZEV1cUp5?=
 =?utf-8?B?ZGwzdXNhOEUyeGtzc0FYTkdQMlJZSjd0cGlxaUQrZ3NydDlLTHJmWjBpYUFr?=
 =?utf-8?B?RFVsT0luYTZaOEFwR0JMaTJkbmdEdktUeHVRU1RQUkVsY1hCTWdHRTA3UTdY?=
 =?utf-8?B?Z01WTVR3Ymk3NmMyaThXdzhiWUJnRzhQUjVEeWdGRS9aV0xHM3dIWlpPNndo?=
 =?utf-8?B?dGdYRlRJV2FONXhsa1pJZEo3bURvMGovK2J4UjQrdFNSWktyTkxJaGZQSitP?=
 =?utf-8?B?b0pYNFgzYUxYMjJUbmF2YSs1dDg4K05tc1N3SndySmNoSXpVU2JiUHo5Lzhw?=
 =?utf-8?B?YzdaMklSOXhFTVRjbGoya3NwbFRlZ2ZvQ2R0U2ZBOTJSY3dqbEIxV1FrSHNt?=
 =?utf-8?B?WTRlSW4weko5c2UrRjBzUUdSdENFU0FKQ2dFMFJGVXVDeDJwTDFuZWJ4OTc1?=
 =?utf-8?B?MEc0U2F6bmlTWlY5VExJdkdONUtPTzJHdHgzK3lNNktCckttZ3ZnVVpJcHVE?=
 =?utf-8?B?YWFUQWpKeWdubGJkdk1XdCtuMFRtMWhIcGNoT1djc2dhb0xtMXp0MTJaaXZZ?=
 =?utf-8?B?UGZoenB5OU1UWW5aVW0xSHJ5azAyc0hrRnBadWhLU2lVaHVCcUcvZ2tnNG9K?=
 =?utf-8?B?c2REUU0vaFRiVm5nUi9qUXpkV2FRNVpQNlRIL1F0TUg4TERaZ1I3Kzk5M3pD?=
 =?utf-8?B?K1lwNHBKTnlWdVo1N0ZVVlVieFlrcDhCbGEzRThJVUlOMVdDcmwrQXdwa25S?=
 =?utf-8?B?bTBKR3B6T1NoM0lyODVHMWdTWFpicjFTWEFFeEx2V1JaaTk5S05HY1c1c1hp?=
 =?utf-8?B?cnpIUEI5RTh4VnhSYmgxK0kvK2F6SWFRbjR4ckpsZjhHWmdraUJaMHZ6TDgw?=
 =?utf-8?B?QU4vdXNFUklEQ3BTaVBqblRYYUdFaHhKY05UWi9nUjFvOUNBRjR6SEhBNzky?=
 =?utf-8?B?T25mTXVGZUlqbzBOTFZpNFVzRWt3TC93bHQ4YmRKQ3dNZ1VsVzVMTE44T3FM?=
 =?utf-8?B?ZHI0MUI3WEN1SlhXYjVDV2JRVnFFaXhNMTB1aUlvcUFDMnVvY2JkMURTZHVv?=
 =?utf-8?B?dkVreFlPN3ZnNk1sOFdPZnVHUU5WQU1KSFZ1RHB3Nno2VHBZMTQ3NDllODRW?=
 =?utf-8?B?SlZlWE9PMUZ0S1htY0xoY0ZrdVBtaWV6cEIrdThMdjJjUzl4YzhNZG8yenIr?=
 =?utf-8?B?Y3ZaK0tLTFVrL204MGd2YzVDNmxIbmF2WlVHQkd4NmVaK1JaUWRjRGpDcEEx?=
 =?utf-8?B?R0FmaTZkZzZ2VzN5UVZQQm4xdVZDWDRvek5VV0ZJUjJaS0hDKzdaLzJpQWtO?=
 =?utf-8?B?VWpITFI0MGlnN1A4NUlWUGlSY29UMWFWQmtic1M3MTNBdDlQZXplR0YvL1Vu?=
 =?utf-8?B?ZDVzOEZ4aTZzTDYyNHFjZGxMS2wvbVFnVVFFRVFOMHY5dXdkME1sV1Y2djBR?=
 =?utf-8?B?WkJWNHVoOUxUQU5ESGl4SzcwUU5SRVFSSElqQUFtc1pZMGFpek9pdlFZME9J?=
 =?utf-8?B?SUVpUEJwNTRIM2ErQlcrZEZzMm5sbTh2clN4RXBqU1M4a0tDNzB5Y0ZIN0ht?=
 =?utf-8?B?a2FvS2pKOHh2MUJ4MkVndlJ3NXU2MzUvaEo0VGR6T3pYYWJBcnQzWTIwaks1?=
 =?utf-8?B?eGRVSWtjN25tUUZ3RUUrOWRyU2FPZkpyQWV6eWpQWFJrSWZCMUdHMGVvM3Ay?=
 =?utf-8?B?Sy9mT2JyS1Nxdm5PM1dkWEVCeU0wN1cvVVZxanpxWEhqeHIydGliMzdseHhi?=
 =?utf-8?Q?Qdhc8kzdS5XhQiH7bic7Xto=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bcd87bc-17ef-4c12-d6a5-08da5e306900
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 02:45:24.6011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AalGmpKBciwJEVkesT3Il4zEyKMBLEygIqbaFPR0QJXzYUdZR9uhY+natSI5rlGvhugbHcZFLlrh8Ktc27wR2Rc2WEJJlHgfGC46JXryrVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR0102MB3404
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/06/2022 14:08, Quan Nguyen wrote: > On 16/06/2022 19:29,
 Wolfram Sang wrote: >> Hi Quan,
 >> >>> On the first occurrence of I2C_SLAVE_WRITE_REQUESTED, 
 the address is >>> already >>> received with [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o8Z6U-007ZSE-0b
Subject: Re: [Openipmi-developer] [PATCH v7 3/3] i2c: aspeed: Assert NAK
 when slave is busy
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAxNy8wNi8yMDIyIDE0OjA4LCBRdWFuIE5ndXllbiB3cm90ZToKPiBPbiAxNi8wNi8yMDIy
IDE5OjI5LCBXb2xmcmFtIFNhbmcgd3JvdGU6Cj4+IEhpIFF1YW4sCj4+Cj4+PiBPbiB0aGUgZmly
c3Qgb2NjdXJyZW5jZSBvZiBJMkNfU0xBVkVfV1JJVEVfUkVRVUVTVEVELCB0aGUgYWRkcmVzcyBp
cyAKPj4+IGFscmVhZHkKPj4+IHJlY2VpdmVkIHdpdGggQUNLLiBTbyBpZiBzbGF2ZSByZXR1cm4g
LUVCVVNZLCB0aGUgTkFLIHdpbGwgb2NjdXIgb24gCj4+PiB0aGUgbmV4dAo+Pj4gUnggYnl0ZSAo
b24gSTJDX1NMQVZFX1dSSVRFX1JFQ0VJVkVEIGV2ZW50KS4KPj4KPj4gVGhpcyBpcyBleGFjdGx5
IHdoeSBJMkNfU0xBVkVfV1JJVEVfUkVDRUlWRUQgYWxsb3dzIGZvciBhbiBlcnJvciBjb2RlLgo+
PiDCoEZyb20gdGhlIGRvY3M6Cj4+Cj4+ID09PQo+Pgo+PiAqIEkyQ19TTEFWRV9XUklURV9SRUNF
SVZFRCAobWFuZGF0b3J5KQo+Pgo+PiDCoMKgICd2YWwnOiBidXMgZHJpdmVyIGRlbGl2ZXJzIHJl
Y2VpdmVkIGJ5dGUKPj4KPj4gwqDCoCAncmV0JzogMCBpZiB0aGUgYnl0ZSBzaG91bGQgYmUgYWNr
ZWQsIHNvbWUgZXJybm8gaWYgdGhlIGJ5dGUgc2hvdWxkIAo+PiBiZSBuYWNrZWQKPj4KPj4gQW5v
dGhlciBJMkMgbWFzdGVyIGhhcyBzZW50IGEgYnl0ZSB0byB1cyB3aGljaCBuZWVkcyB0byBiZSBz
ZXQgaW4gCj4+ICd2YWwnLiBJZiAncmV0Jwo+PiBpcyB6ZXJvLCB0aGUgYnVzIGRyaXZlciBzaG91
bGQgYWNrIHRoaXMgYnl0ZS4gSWYgJ3JldCcgaXMgYW4gZXJybm8sIAo+PiB0aGVuIHRoZSBieXRl
Cj4+IHNob3VsZCBiZSBuYWNrZWQuCj4+Cj4+ID09PQo+Pgo+PiAncmV0JyBpcyB1c2VkIHRvIEFD
Sy9OQUNLIHRoZSBjdXJyZW50IGJ5dGUgaW4gJ3ZhbCcuIFRoYXQncyBleGFjdGx5IHdoYXQKPj4g
eW91IG5lZWQsIG9yPyBEb2VzIHRoZSBhc3BlZWQgZHJpdmVyIG5vdCBzdXBwb3J0IGFja2luZyB0
aGUgY3VycmVudAo+PiBieXRlPwo+Pgo+IAo+IEl0IGlzIHRydWUgdGhhdCBhc3BlZWQgZHJpdmVy
IGRvZXMgbm90IHN1cHBvcnQgYWNraW5nIHRoZSBjdXJyZW50IGJ5dGUuIAo+IFNldHRpbmcgQVNQ
RUVEX0kyQ0RfTV9TX1JYX0NNRF9MQVNUIHdpbGwgdGFrZSBlZmZlY3Qgb24gdGhlIG5leHQgUngg
Ynl0ZSAKPiBhcyBwZXIgbXkgb2JzZXJ2YXRpb24uCj4gCj4gUy0+IEF3KEFDSyktPiBSeEQoQUNL
KS0+IFNyLT4gQXItPiBUeEQoQUNLKS0+IC4uLiAtPiBUeEQoTkFLKS0+IFAKPiAgwqDCoMKgwqAg
KDEpwqDCoMKgwqDCoMKgwqAgKDIpCj4gCj4gQ3VycmVudGx5LCBzZXR0aW5nIEFTUEVFRF9JMkNE
X01fU19SWF9DTURfTEFTVCBpbiAoMSksIG9uIAo+IEkyQ19TTEFWRV9XUklURV9SRVFVRVNURUQg
ZXZlbnQsIHdpbGwgbWFrZSB0aGUgTkFLIGhhcHBlbiBpbiAoMikgYW5kIAo+IG1ha2UgdGhlIHJl
YWQgc3RvcC4KPiAKPiBJZiBzZXR0aW5nIEFTUEVFRF9JMkNEX01fU19SWF9DTURfTEFTVCBvbiAo
MiksIGllOiBvbiAKPiBJMkNfU0xBVkVfV1JJVEVfUkVDRUlWRUQgZXZlbnQsIHRoZSByZWFkIGZy
b20gTWFzdGVyIGlzIG5ldmVyIE5BSyAKPiBiZWNhdXNlIHRoZXJlIGlzIG5vIG5leHQgUnggYnl0
ZSBhbmQgTWFzdGVyIGlzIGFscmVhZHkgc3dpdGNoIHRvIHJlYWQgCj4gZnJvbSBTbGF2ZS4KPiAK
PiBJIHVuZGVyc3RhbmRzIHRoYXQgdGhlIHJldHVybiBvZgo+IGkyY19zbGF2ZV9ldmVudChzbGF2
ZSwgSTJDX1NMQVZFX1dSSVRFX1JFUVVFU1RFRCwgJnZhbHVlKSBpcyBhbHdheXMgMCBhcyAKPiBp
biBEb2N1bWVudGF0aW9uL2kyYy9zbGF2ZS1pbnRlcmZhY2UucnN0LiBCdXQgd2l0aCB0aGlzIGNh
c2UsIHRoaXMgaXMgCj4gdGhlIHdheSB0byBOQUsgb24gdGhlIGZpcnN0IGJ5dGUgYW5kIEknbSB3
b25kZXIgaWYgdGhpcyBwYXJ0aWN1bGFyIGNhc2UgCj4gd291bGQgYmUgc3VwcG9ydGVkIHNvbWVo
b3cuCj4gCgpEZWFyIFdvbGZyYW0sCgogRnJvbSBteSBwYXJ0aWN1bGFyIGNhc2UsIGFzIGl0IHNl
ZW1zIG5vdCB0byBiZSBhYmxlIHRvIG5hayBvbiB0aGUgCmN1cnJlbnQgYnl0ZSBvbiBJMkNfU0xB
VkVfV1JJVEVfUkVDRUlWRUQgZXZlbnQgKGkyYy1hc3BlZWQpLCBpcyBpdCAKcG9zc2libGUgdG8g
c29tZWhvdyBhbGxvdyBzbGF2ZSB0byByZXR1cm4gc29tZSBlcnJubyBvbiB0aGUgCkkyQ19TTEFW
RV9XUklURV9SRVFVRVNURUQgZXZlbnQgc28gdGhhdCBidXMgZHJpdmVyIGtub3dzIHdoYXQgdG8g
ZG8gZm9yIAp0aGUgbmV4dCBpbmNvbWluZyBieXRlIGlmIHNsYXZlIGlzIGJ1c3k/CgpBcyBmcm9t
IHRoZSBkb2NzOgoKPT09CgoqIEkyQ19TTEFWRV9XUklURV9SRVFVRVNURUQgKG1hbmRhdG9yeSkK
CiAgICd2YWwnOiB1bnVzZWQKCiAgICdyZXQnOiBhbHdheXMgMAoKQW5vdGhlciBJMkMgbWFzdGVy
IHdhbnRzIHRvIHdyaXRlIGRhdGEgdG8gdXMuIFRoaXMgZXZlbnQgc2hvdWxkIGJlIHNlbnQgb25j
ZQpvdXIgb3duIGFkZHJlc3MgYW5kIHRoZSB3cml0ZSBiaXQgd2FzIGRldGVjdGVkLiBUaGUgZGF0
YSBkaWQgbm90IGFycml2ZSAKeWV0LCBzbwp0aGVyZSBpcyBub3RoaW5nIHRvIHByb2Nlc3Mgb3Ig
cmV0dXJuLiBXYWtldXAgb3IgaW5pdGlhbGl6YXRpb24gcHJvYmFibHkgCm5lZWRzCnRvIGJlIGRv
bmUsIHRob3VnaC4KCj09PQoKQXMgdGhlICJXYWtldXAgb3IgaW5pdGlhbGl6YXRpb24gcHJvYmFi
bHkgbmVlZHMgdG8gYmUgZG9uZSIgaW4gdGhlIHNsYXZlIApzaWRlLCBpbiBjYXNlIHNsYXZlIGlz
IGZhaWwgdG8gZWl0aGVyIHdha2UgdXAgb3IgaW5pdGlhbGl6YXRpb24gb3IgYnVzeSAKaW4gdGhp
cyBwYXJ0aWN1bGFyIGNhc2UsIHRoZXJlIGlzIG5vIHdheSBmb3Igc2xhdmUgdG8gbGV0IHRoZSBi
dXMgZHJpdmVyIAprbm93IHRoZSBzdGF0dXMgaWYgdGhlICdyZXQnIGlzIGFsd2F5cyAwLgoKSSdt
IGFsc28gYWdyZWUgdGhhdCBpdCBzaG91bGQgYmUgYWx3YXlzIGFjayBvbiBJMkNfU0xBVkVfV1JJ
VEVfUkVRVUVTVEVEIApldmVudCAod2hlbiB0aGUgc2xhdmUgYWRkcmVzcyBtYXRjaGVkIGFuZCB0
aGUgd3JpdGUgYml0IGRldGVjdGVkKS4gQnV0IAppZiBzbGF2ZSBrbm93IGl0IGlzIGZhaWwgdG8g
ZWl0aGVyIHdha2V1cCBvciBpbml0aWFsaXphdGlvbiBvciBidXN5LCB0aGUgCmJ1cyBkcml2ZXIg
c2hvdWxkIGJlIGFibGUgdG8gYXV0b21hdGljYWxseSB0byBuYWsgb24gdGhlIGZpcnN0IHdyaXRl
IAppbmNvbWluZyBieXRlLgoKSGVuY2UsIG15IHRoaW5raW5nIGlzIHRvIGNoYW5nZSB0aGUgYWJv
dmU6CgogICAncmV0JzogYWx3YXlzIDAKCnRvOgoKICAgJ3JldCc6IDAgb3RoZXJ3aXNlIHNvbWUg
ZXJybm8gaWYgc2xhdmUgaXMgYnVzeSBvciBmYWlsIHRvIHdha2V1cCBvciAKaW5pdGlhbGl6YXRp
b24KClRoYW5rIHlvdSBhbmQgYmVzdCByZWdhcmRzLAotIFF1YW4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
