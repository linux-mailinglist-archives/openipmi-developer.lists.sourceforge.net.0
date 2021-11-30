Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C291462C4F
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Nov 2021 06:45:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mrvxF-0000aq-OW; Tue, 30 Nov 2021 05:45:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1mrvxD-0000ah-L2
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Nov 2021 05:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fL3GSUnji5orlxWFMszOYxC8L9ztkb81D72JPQj+mSI=; b=Sc95KXR9LmnswPamHqAsKLNV3B
 im1XkelqexPU9pgxuW9puGEC1voqhd44wdmgby0Y9gDXUUHhctKCsgchrFRx6JL9jGvr7gPJZI6sO
 2C9K7aBtaY/OaT+9Cu/Trhjgk1A+GaFTvseRc8LNsogCzhM0IoGo034wKf3krhjQ0Vw4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fL3GSUnji5orlxWFMszOYxC8L9ztkb81D72JPQj+mSI=; b=jqstZJVfjlkRXafiR+MtFd24VT
 J1Nqox9aVrHCimrQ143g9nORP1bO1tlpLX3eeVeJjI7C9xBQ7uHwRZOhlzOekqOYWUQVKgwgr3e6R
 lG3OE3xkkut5ydO8Vge/d2Imsu8wKzsnXZ2BcP8yXOVg2DqxYMHzvH/79anbljRDBS7A=;
Received: from mail-bn8nam11on2105.outbound.protection.outlook.com
 ([40.107.236.105] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrvwj-00FQv2-By
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Nov 2021 05:45:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B/YOA1DZppdOJ4z/Cd3TcZYv+Ii/4LBlbcKb7NSfFujRLhY8ZHSFfwSyXFX18mpAPMIX9bO0ZCNJFD/w8Rkte5BBW2lVQhNmea6ExUPRtm/BgAhRNENT5EF4gYzL6MIbPZ6y7LpxcBCVLePBixJYXYV8rW9xZDKfODDqqkMRadt/sQcJw9Jj++Z41hysI6GP6qHiTDQUkTCHHQImNvHfv4cUYylm/0qzmukeuLYrJZDERmEaK0rWIVkCftS4j4m1BIGF4yahOJPAIWysf50ok9pdF/0tylHQbKSguXXH/FM6DH0k/muAOGuYYk0DGOlDgdNfktoen2FOQdDez9SJTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fL3GSUnji5orlxWFMszOYxC8L9ztkb81D72JPQj+mSI=;
 b=EXVgGknBZveM+hqFTALe76oGyctKsAbxoBlpd1CALuEUI7wVgzFfRtWC/mvGGjaIChD5XtaEUB7PXGftw61gXHgX8fLuFl6PDxBdaatbnzYLIPBt0txtVb0PcOui+owwNiikM5YbJAinjm0hH6xKhPwJxXbsEDHwg6AnnxvHmWNOedR/s1PGwWOVYLiyQth8IjmR9VCJaPK0AiuzxyBX2w/cePUDLg4k6sASk80u1mwjczTITsC+/bQy3T7nJAHsBgVZ35E9jZsTvqDMNkPwanW+i8OlNPllwjrrxMY/biANxLVwLn+zbSAPIr32kDKewj45S0qilC+Xsviv5MHU4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fL3GSUnji5orlxWFMszOYxC8L9ztkb81D72JPQj+mSI=;
 b=YrpX8yQZqVCjwTJ2C9/JLkjID/U51TB+IK58fxEhruNwpdLoYZOrLEh/AWNOmPwHmiIEy67+hTpiI6AXVNlZE87kHxkd5he7GU+UeZP7VHhgRNUa5S4aAcdSHXr8J2LyFAprSDYQYiegIcA3r64LHsQpCRsGUHrgofQuQXhCLL4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 BYAPR01MB4277.prod.exchangelabs.com (2603:10b6:a03:5d::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.23; Tue, 30 Nov 2021 02:08:30 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::c880:9ded:28e8:345a]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::c880:9ded:28e8:345a%9]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 02:08:30 +0000
Message-ID: <b8ee3be7-c0f6-d1fd-1ba1-13066b329ee3@os.amperecomputing.com>
Date: Tue, 30 Nov 2021 09:08:05 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Content-Language: en-US
To: Wolfram Sang <wsa@kernel.org>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, Brendan Higgins
 <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-2-quan@os.amperecomputing.com>
 <YRTQP9sX0hkTJMTx@shikoro> <YaUoeFZn6zLNoGed@kunai>
In-Reply-To: <YaUoeFZn6zLNoGed@kunai>
X-ClientProxiedBy: HK2PR04CA0062.apcprd04.prod.outlook.com
 (2603:1096:202:14::30) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
Received: from [192.168.10.85] (115.73.5.82) by
 HK2PR04CA0062.apcprd04.prod.outlook.com (2603:1096:202:14::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.23 via Frontend Transport; Tue, 30 Nov 2021 02:08:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bddcdc04-602b-4e20-b921-08d9b3a64d8b
X-MS-TrafficTypeDiagnostic: BYAPR01MB4277:
X-Microsoft-Antispam-PRVS: <BYAPR01MB427714FE92FB1192359F704EF2679@BYAPR01MB4277.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wlgchfMfYc2Q1fyxLzLsKS5VKdKfAew8jd1QWDHCwZiAvFi+NprZYtIwk/HMLdv3Gn/81aCG5T5IMKt7R+I5Zi9gammkPZ3pfqMBSfKWfzMasKfEzyE6nB6rBAVd1BuJu+JqiTtUPgav5BeX1yPTTbou0NdV5QNG/Tmu2cOd2JaBSpHp2h4M7iPNWiGllEUk8TlsHQKMmlcXy5XgOVh8uacOzrn7MLjS8PI2zjZR+BjbG/YYn1o2VZjVeiS0AZimhr3+3OiuY2XmjEzYpqiLjrUmW7suhovGUdeexxyml+ockSQO93bSDNsCZIki3kEL0PaFDPJJNxN6KG0vhhqBOQ5iX+h0rWZMiC/4BoPszNumREflrdcohicEXv4VuEvYpUWIGWMYCW/hbBKRdh009mYlvwHkJizy04mfrbu3GcKUsdZwyDtCmOG5aP3uRyboaAqIYOOKYw/4koCGcj9Z75aId5P5/7Su3UZVaWeSq6PoRgT7l1xXSqxWK8eBwbO61oWMhAzpZwQY9lnRKiWORU4sOSCLp+giWwX6ZcOpLwwpTlrIhTudNji6HRq+nwE+5JNQaFmyo3B9x2EYRnWOEm5yKGBWiRHppioOVw+3Pgj9P0nBVt72dNLnx5p+q9/mIKDRn2pzNJYhiXKBVeFhwC14oO2ap31Rvnn0jdCB+0P2Hw/g177pX3EZp2jqVNIayMbuGtjqo1tmHSoGBygfoXpIlcG3oKgiM4EBNX1IBf9kB4qezNPCn+3Y3JQCh2hO+ONxkujmlwMe2TQlYZwiPbodCDH6rH6Y97GGTGt2Qc8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(2906002)(6666004)(31686004)(2616005)(956004)(8676002)(110136005)(52116002)(53546011)(66476007)(316002)(31696002)(6636002)(66946007)(186003)(38100700002)(921005)(6486002)(16576012)(7416002)(8936002)(5660300002)(508600001)(86362001)(66556008)(83380400001)(38350700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG5ZOTVaN2lzS2tUL081Y2R4cDZsWFVsWW1CQys4TmgzdCtNYlBlZE1LSC9L?=
 =?utf-8?B?WWpqL2VsOHlFZngrZU4wdU50QW9vREZJUjcwaUt6YzMxYkZmUWoxZVRiNE8y?=
 =?utf-8?B?MlZEcU5OOUw3TWFhbUo1V2t6cThJZTJPQTZKMmR5U2ZmNnBnLzZpWE92L21K?=
 =?utf-8?B?WW5tQTJGM0I0RVk0SDhkTUdhUVFxcHNjR3hCWU5nZmVpeFpidTVGd1dPTEVF?=
 =?utf-8?B?MkNtamREVEo1YU1XVzBZWFZnb09mM2M1NXlPanBORWFhM0tOSFpsUTdFSits?=
 =?utf-8?B?NytBU2doeDgzYXpTTDdDUDYrZlhwSEpoNDBCUVFEdThtMUJNdktzSy9uNUdv?=
 =?utf-8?B?OU1oLzM1U2wwYy9IaFZ4Q3FFQWI5REEwVGwxblNxMFJHWUdLR21sd3lHZEFu?=
 =?utf-8?B?QVdldDYyMFBucW8yaUpoaE4zSnZ5WWpaYWQrR2NYcWdrWmFZTG9RQVJ5MnN1?=
 =?utf-8?B?VzdPcEZtbkNLOGt3OTMvOGIxM2oyM1VDeWZQYmhuRGpETHhhL25YOFlRV2VJ?=
 =?utf-8?B?YVlZM1duRkJ2WWxUT0pKWDBpSUZPc3BROG1ra1ZvcTF5WndUR0hsMTJiVHFp?=
 =?utf-8?B?YXNRWjlPd0NJV3JkQzRuTGpsQjFqellZK01URXo1djgwWGlMa0tSZkR4YmMw?=
 =?utf-8?B?MFZBT0c2RkRhdnVFbGd3S2pJMjFVRUhVbnlGMXluOWl5V3VFWkgrdHZSclBQ?=
 =?utf-8?B?WmxGNUJ6MUUwMXUyQXpLSGp1dUhYcVBCRWx3SGVWbWpyUG1Ydmt5dHhPbUM1?=
 =?utf-8?B?cmhmemRZMktqOVNCZnRKSzF2TmJpVVdIYmdoOTJpNjNHZm9yOVBsNFpmZktJ?=
 =?utf-8?B?QXdyakJFaTRRRVYraGVVbWtyNTByS1JJUUtWSndhQkEybmRLOXFFeGY2MGpj?=
 =?utf-8?B?bVlyUkZ4elVydVNhOHc3TW9hRzFidS9MaUlvZHMwc3owOWZEUmVKeDJKa0hj?=
 =?utf-8?B?T1lVOEZOa2ljdFhGZW1KK1Q4MkdPTGNJK1VockVja2xJMnJubkhNejl5aTN5?=
 =?utf-8?B?cDIrNXVjSGxEL3BCQXljODZsUUF0NnBMZkU5ZWd0K1BnbjhHQXREcnFNVlp5?=
 =?utf-8?B?Zy9iaFNHdzFiZnBUejRQQnlrQWM3NUs3VjYrWlJnQ2FiY0xIQjFVUDcyRkRq?=
 =?utf-8?B?bXJyeFovRnI2VGp1QXQwR0tzVDIzd1ZPUmJETXBaY29iVjlFaEZEZy9VUWFB?=
 =?utf-8?B?dngxSUIvMit1V3FUQndUdzlGSHN3Y1hiZjZQQWhnK1hIOUR5VG5WTm9ncUNF?=
 =?utf-8?B?UlhRNVZmRXBCU2wwNGdvMlQ0WENKRFJnc1dGYVc1TmtybjZocGNwV1dLVDkx?=
 =?utf-8?B?Wk9YR1luNnBEeGdFZkViLzBld3RMZHZTeXhLZDRLdkFrNnpNaElLVnc3L2JE?=
 =?utf-8?B?dnhueGpockMwbWpoN2RHVjNMM3RtUmtSNHc3WEI0bmo3ZHJMLzZ2WTlmdnlG?=
 =?utf-8?B?OUJ4NTc5TmlsQmtVWmttSDB6SVlxaXZJNHNyNDkvRkRCNmU2Vk8walQwN1ZT?=
 =?utf-8?B?cVJDc2F3S1VXamREM1RoOU9kbUxuUG01ZXdMM25rcUd3aGI4YnlNaFBaSVMw?=
 =?utf-8?B?N1ZTS1RsTzl4L0pFbmoyVHExbUlTMVhIeXlxVlJmcHlrcUZldU5PblZVK2pl?=
 =?utf-8?B?ZHpINUpUNER4cFFtVGxySTRXMFJ4ei9uQWNEd0xJeHI3TXpUZ1VFR084cklp?=
 =?utf-8?B?Y1RQc0g2V25iVUVWYksyU1RTWml2amFMYmpySXQzOHE4NHNFRERQbXJWdEVF?=
 =?utf-8?B?NEJWenlYc3gxM2pyTk44TXk3T2NpTnlEWjRJRG53UmNzVnNJNlpSN3pTVk45?=
 =?utf-8?B?d3pCeDZDQTNBRGc1R200REttekswd3N1V0xjTENkSWtxZTF3VUJKbGRxeWo4?=
 =?utf-8?B?d2ZwbnVWYklGVjZzMEk2MGdMNXI1UDl4MkQzU0NUZmhxS0E1VG5YemRlS1Zh?=
 =?utf-8?B?UTVsQ0txS0Zsbi9QY3J2NVZQVEVFbEI4bE5MbkdIa2NlVjFsM25zbmZ3UkNs?=
 =?utf-8?B?blRrUXhGMjRPSFNXd2pscGxBckxqMVZqbkdVcGVYRmM0SkNVRTU1bXBGTkxh?=
 =?utf-8?B?QXZLVU95WXRWYnkrdCt4SmZQQTlMVzhJWTVkVjFTcnFaRXU0NDZPMnMraXl6?=
 =?utf-8?B?bTlWaVhRMjR6bUc4U0tQd01ZUkQ5NzVvNThJNU53V203VEM5NTN6V3FXVWkw?=
 =?utf-8?B?a0FJOWhheXBPY2JBeXB5UnM3QUVQVzA4RTBubUFIS1NvcXBDSFg4bUE4YWZk?=
 =?utf-8?B?eUVJdXdqNUZ2U1R5eUpBNGZQTlFBPT0=?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bddcdc04-602b-4e20-b921-08d9b3a64d8b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 02:08:30.1619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gvPONNqI5u0XZGmko1FWcKBIJNX7HCGnFGpI3aZhYUkgqoBgsqzXnKdQTIen706cl5Gvg0KiSRT6VGuwBJQYMKFl+GXZFmfo01UM7Z5Cfec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4277
X-Headers-End: 1mrvwj-00FQv2-By
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] i2c: aspeed: Add
 slave_enable() to toggle slave mode
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

On 30/11/2021 02:22, Wolfram Sang wrote:
> Hi,
> 
> I still wonder if we can't get the SSIF BMC driver upstream...
> 

Thanks Wolfram to help bring this up,

This driver was tested with Aspeed ast2500 and we have tried many way to 
avoid using slave_enable() to toggle slave mode but there is no progress.
Our expectation is still to have this driver upstream'ed and I'm 
thinking about testing this driver on other HW and re-post the driver.

>> @all: Plus, I neither like the API (because it doesn't look generic to
>> me but mostly handling one issue needed here) nor do I fully understand
>> the use case. Normally, when a read is requested and the backend needs
>> time to deliver the data, the hardware should stretch the SCL clock
>> until some data register is finally written to. If it doesn't do it for
>> whatever reason, this is a quirky hardware in my book and needs handling
>> in the driver only. So, what is special with this HW? Can't we solve it
>> differently?
> 
> ... for that, it would be great if somebody could answer my questions
> here :)
> 

I have to admit that you are all right with the above comments. The fact 
is we still not be able to find any way to solve this differently. We 
don't own this HW and dont know what happen on this particular issue. 
The SCL clock stretching on this HW does not work as expected and the 
slave_enable() is the only solution for now. I hope if someone could 
help with the issue as well.

Best regards,
- Quan





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
