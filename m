Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C315954DB58
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 09:16:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1jkE-00046M-J5; Thu, 16 Jun 2022 07:16:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1o1jkD-00046F-6X
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 07:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XtNVyT0ovF3YBqo+91OxMnyr8ptcmtkZjbbNLv8oQWk=; b=d8HP2Iw+ZHxrjqKUn2fCXdAcEt
 Z6ukGLRZl0PnmrD6OfGNtt5wQQE0TFoZJt7kKt5TVPYxzS2Gvz+0FNZ17ebWCHaGYCl7iUoEu2ats
 EhVrljnCOzYKjhHLis3gAMFMGXXkTce3UG1ykTutnfPTiDztsVm2kS8F82RmfJyDW2/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XtNVyT0ovF3YBqo+91OxMnyr8ptcmtkZjbbNLv8oQWk=; b=IBU1hzYBrSFaFYh8p8ONbwRNqk
 nMGqKN2+P/zx1dgVLHrDsJTy2pYM+2ZMfzEm9ojJa8yRZ4q9vWQMZdcBmH4VnFvS9gubWaDW26pXx
 LVpGxr1wTNB1E6g4B0vlnh3/OLs/M7/P+hvg9X550YiiCq5X0F+wEWGRML2mOwwwa3UI=;
Received: from mail-bn8nam11on2135.outbound.protection.outlook.com
 ([40.107.236.135] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1jk7-0007uh-5E
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 07:16:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7+dVamcgaCWszspU9ak+cBVoVFZxZpWd5GDQFgtwWtmaPp4JsUCQOFMvoI21Vrd4B5JuzKf49zZFaGLwBnPCVKxAxK/z9Of4bjpT6kpq7INI3zNa+Syd9YOG4b+OtWlP/3Ysw0UKaqFrt2lX5xE1n5lnrkYVaF2p/tdh429t6WcCgSMSihmrunIApmKwoGj7XVCpkmyiwfY72EnCX8NEy5FY3Ep8yiq41oCVLdpSvBzhICE2i+DRwwZ+Vecwlok2MwJux2oLvn5HgCf+lghbEtEKayCWgN4ct7seyiDmjnV41OYLogiiEXSlLkIirNqVml7fKk/gWgC9d+jE6w4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XtNVyT0ovF3YBqo+91OxMnyr8ptcmtkZjbbNLv8oQWk=;
 b=Nf8nqTxWUI+MFWKhKe3i8fvYOd6OpqWpHNH2BuB6E8YjEgnHSsv7crkU9GiMBPHPtL4b2Ru8TKMfoWX6HNQ8hTdDiJxXQ7v1IYME0atUkjklTBQ1hPbdchg6b9Ej14hmzxl2cCo7JxV/YXUBcFbFkhkC1hHYSKiefLHCBMEz93xNoME/g7CjswjE+WTFdK6j3T9IT6+g8w5CtF3LXL5Y4N3hJ9Cgmj8GnXwsMUZCkHO9gXjhbV4u2Dfwb/lQxwqbqgki9NZYN/EH8zynUkUUHRS+zkdBsj6oNuN2LEYo77D7EjXtN1vOs4rhuZVYvgIlyMCqxJL8L5FhVgAWlVxoQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XtNVyT0ovF3YBqo+91OxMnyr8ptcmtkZjbbNLv8oQWk=;
 b=r+n5ubxxPUFblqxVqLMqIOM+zqN+4tje/K/7ow1emuz6wkmnbLy04wGnHJjoXJRfx4s2of5Or1yLpW3UySj3QPgZ0SqXg+DK9nqFAxB49hr0Cp4rYGQzT6IUpAkXg6xP1WcNRh8arci24iq1aeDfLxPw1IvaufXQBttQ5kXnng8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 SA0PR01MB6249.prod.exchangelabs.com (2603:10b6:806:e3::5) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Thu, 16 Jun 2022 07:16:32 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e%7]) with mapi id 15.20.5332.020; Thu, 16 Jun 2022
 07:16:32 +0000
Message-ID: <bf001ece-e981-3a06-53fe-6a8b637d69fe@os.amperecomputing.com>
Date: Thu, 16 Jun 2022 14:16:14 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Content-Language: en-US
To: Wolfram Sang <wsa@kernel.org>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 openbmc@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-4-quan@os.amperecomputing.com>
 <Yn+9QBoPdH8fMm/m@shikoro>
 <fc422a06-c035-f6e5-231b-74ea6afe8467@os.amperecomputing.com>
 <YqpB8A2uBi+4epHM@shikoro>
In-Reply-To: <YqpB8A2uBi+4epHM@shikoro>
X-ClientProxiedBy: SG2PR02CA0036.apcprd02.prod.outlook.com
 (2603:1096:3:18::24) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a29dedac-f596-4d0b-a003-08da4f6823de
X-MS-TrafficTypeDiagnostic: SA0PR01MB6249:EE_
X-Microsoft-Antispam-PRVS: <SA0PR01MB62496AF83C6EE3177F1F6F97F2AC9@SA0PR01MB6249.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /N4pF3OjUxDyjseV7YQhrryMVCRfeaHkQ36T3YRUgECAk9c2S1/zPRJlMRsELDYAa4xyzh5ZdJNsQtD3agVv/SuK6/TNn3sF+a9ehL6XiYGOziFimwCcmwzO1hPfdGFEKerjKvyX0666rf0vy9FVjQpHmD9FlrAZ84roRyVM3eICVqsRd7g62VrzkMwJ1fMxuDIYz9FopL0urR1y9GC4Yduy+bQMFRwRqzusksHoW58hW5OQSAq+g1ot+jgFQogfyKrVlrQnEI/I1vJRh3FCQ/WFY3mPPvtjBO9ZXdbpdz10C2OF3F7ahvlEZtTpWFlEMZqeg1Z937cs/SSi63jbioGXXsEred7/tYRqriV8yu6XvbUnsla+jhKx8uFTuRIBcgiQ6hDAsh7hvvczHwipFNkTSJNLRhWJaZ2Y5CUo1qL+BO+D3Y8f7ZdusUjr12jp8iDamNEao8lVh6YSf/OgItXc56lA3DMsUSNDAJjOKC5xmitTXyPVOqRpoOWJR4ZrKNYSChisVfXC+08TBRK9BOfDui7muJbqYA+2IkI0hyowWm2SligNwi5hTRtdMH18w68xJeMiS59IGQ0QPZiea3pYjnNjyAJSBUwMOSBpMEVR+Nytd1uaw0SUFq0UQBOT1jyXSgV6fTwBmnI8jJR2YX08wYuRrOeL9OMBbmZankMGRAVWafSAnbdQErPGWqReNfOH6Czn8repb0wiNfpULYvtJeuR1i4SAYfTpEtPJqNgjx/NS//z/Hydj9XCBca2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(316002)(6636002)(186003)(6486002)(508600001)(6506007)(110136005)(83380400001)(38350700002)(38100700002)(2906002)(6512007)(2616005)(31686004)(52116002)(8676002)(66556008)(86362001)(6666004)(53546011)(5660300002)(31696002)(66476007)(921005)(26005)(7416002)(8936002)(66946007)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHFwV3JXUFUrSDIyelg3QmR2eEdwUlJia3ZYYzJ3T21ROUllay9tTU9hMmpw?=
 =?utf-8?B?N0IzL1M3Mmg3QVludXRPRittUmFDUmdzYU02WmZKNW1PQWZEaFh0c2lrdW1v?=
 =?utf-8?B?VGNRKzBJT2ViRythSkdROHJjalUzYVBRVGZVVU8vMXNnaGhBNDhJWXpvNnpz?=
 =?utf-8?B?Y0UrZm9iTEdrNmZTY1dhWUlPdCsrWGpaRVFodTB3aVl0cEJNelE0L2lZQ0V3?=
 =?utf-8?B?Q09JSFJnb251ZTkzOWUzbnl0Z1J2L0h6Y1FDR1FUVUtIWXArTXgzNmJRUUE1?=
 =?utf-8?B?WjNtbTJFRHJjbXIvTGgxWTFQZ09tcUhMNHgzdUROWmFUdnFpRWtIMUpDL2gr?=
 =?utf-8?B?Y1g3Q01zWFdONG95MWRyNjFDd3FQeTI3eE9IUFVrWVMyaTNseUk5OXV6TTd3?=
 =?utf-8?B?aS80MmxOZnBuVjhXNEJBbjkrTXdsdzRpNmxGZzZIYXZ1ZzZkOEJpZUFHS0Jy?=
 =?utf-8?B?NlErVWFncDVHK05uZnRORE5nOXZXOTBpMTU1YXg2b2RDeDc5WDllUS9lKzZK?=
 =?utf-8?B?WnoyekI2VGRMU0Joa25xV0d4NFk3eGk3U0FYaVJhZjdITnk5OWxBN3JweGly?=
 =?utf-8?B?d3Y2WUh1U2F6Z3VuQ3ZyVHl0RjRzaEdZNTE5djI1R1g2Y0dzNGJhU28xejgr?=
 =?utf-8?B?TmRUOE93Z09pZjZxNEZYUHVEZXllMXVId3VvdG4rZi9tOG54ZENPdk40MUtF?=
 =?utf-8?B?R0FWTUVPN0tQUklqTDN6VVBKaEg4N1BuTHFkOWJqOGdwb2RDTSs1YW5WQlJ0?=
 =?utf-8?B?NTlRRW9wOWtFWFJxT1lGdW9SSjVJTXR6OFRWWlNmY1B2R3h1a0Y0NDhMMzBW?=
 =?utf-8?B?YUVGVXBjRFlaQllQaEF0T1ZSSlhnVUxhSzR3Y3ZhVUNoZ0ZLM2M3R0I2cWl3?=
 =?utf-8?B?czBubEtyTlMweVZtTDlyQi85Umt0c21GYnFhSmQxRkc1NGtyQVVVVnJpYW5j?=
 =?utf-8?B?THd6YU1VelorRm5ya2lTQ0R3MmtzWktIcGdNMzkrdEFodzdqUlJ4RE1aM3dE?=
 =?utf-8?B?NjZDUDBycWJLSXprR1A0eS9VMmRzZzE0RThQakVpTlRhcklEZDkvdVZhelUx?=
 =?utf-8?B?T1I0S2ZyWVpHVjRZRFFwUGRsb0Y1Q3VDcHRaVnRjUThXcklCdnZxRVBOVFo1?=
 =?utf-8?B?NFMvbWFXeUVScWgvZFBJYm5DNUFoblNuL0dWbnhQUlZhazcwVWc5cTV3KzZq?=
 =?utf-8?B?ZllyTkRUZ0RUM2I4bW9xemZDa1dZTnBaZ0J4ejlBaGR4bEpGdU1HU2g0am50?=
 =?utf-8?B?SFNvMk9kenhjQzI2dysvVFh5MTBjWjNjV1hQYmR5c3hzQkZOVFhlK3p5VGFV?=
 =?utf-8?B?RzJHaHE5Q1lXaTRkNHlHeU5EenI0ejM2c0NKb2RyMXpweWdkVEI3QVhvOG9H?=
 =?utf-8?B?V0RYZFVXTHN5TXhGc3RONlk3S1lSWFVOSm5xUXd4cUtXUXE2NG5MTS9GOVBR?=
 =?utf-8?B?angvSnRhOXFRZVZqQU1mTTJvRFVmNEdGZ3RrVER2bXFaMTdPa2lib09Jb0dL?=
 =?utf-8?B?WWlnV0JaRi9LVStQT0hxM3Q3S2h2RWhOVG5ZRUs2YTZwWmFCVThTTTdNTUJW?=
 =?utf-8?B?TnlUczVTbUFSN1FjZWRwa0RxaU0vMUU5VUZLSkFYSEhGM25SL1RWa21RMWxO?=
 =?utf-8?B?UDVTYzhaeUhmQ1l2YUtJbm1ic29NZVRqdFRZdGlFRktZRG5tNGo0MW9PYUxR?=
 =?utf-8?B?QjlLR21HSnZoTlNpY2REb1VXWnVoN04ybDE4Qm5jUlpONlZNT2YrVVdHZGMy?=
 =?utf-8?B?TWxHejJLRUw5ZU1HaW1Zd0E1NkhzTzM0TzBINno5S09WdWVNR3dDQkNXN090?=
 =?utf-8?B?cW50Q3U1TWY5SDRLdHhGUVRHbzJGNG05VE54Y29lblREOS9BVUtSQm5tbVFE?=
 =?utf-8?B?bnU4OTdRZjBSSHpqeWUzTUp4ekRndU12WmVsbXMvY1FCNC9sa0oyaVhyZWNF?=
 =?utf-8?B?UlU2ZFBoTHVBbGJxRFEySlZZUzViVjZkNDNWN3JBRks0dnMySnBDK1QzaXha?=
 =?utf-8?B?MExBMFlaMGJBS0xaWksySmZFVzQ1VGRMMTcwZ2xGWGtrcXljVTZKdEQ1NHNx?=
 =?utf-8?B?d1lybXNkcUwwRTBrSVZBeXVSY0s5djJhTDA3VFBXMWZieUhzcjl2ZmdxaFRE?=
 =?utf-8?B?bm9kRjZFTDhiaXBBQmRXb2U4eFhQaGVtYkFCZk9hRmhsamlrRDQza3Z5RXo0?=
 =?utf-8?B?T1U3SDhhYWlXYk9CNG4zOWVqUkNFL2FuS1R2SCsxaWRaTlVoSkhzSi8xYTZH?=
 =?utf-8?B?cEx0dEx5WUVyMWZoL0lBREJrTmF4NEdzNnJLOFFWSlA2eXlBbkx5RkRSVGNw?=
 =?utf-8?B?bDdFdWc1eTUwL2prRlpmcjU2TXFyNFcwQkd2Sm41VjhZMFB0UGlZemJHaWo0?=
 =?utf-8?Q?NrVUc/9m772Lk8GtWMbGeu0m2utop/AvJY+Kk?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a29dedac-f596-4d0b-a003-08da4f6823de
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2022 07:16:32.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qxqhRmebMX/AC/0Fn1mI+ZzAYZlnhubG8y7iDSbhxg/c181s9WJpHwd34HSmDmeg6VaywWNPKKJqJMkCbr/D8zi8Nx1mxfgvqwqlLpOkoRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR01MB6249
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/06/2022 03:32, Wolfram Sang wrote: > Hi Quan, > >> When
 tested with ast2500,
 it is observed that there's always a >> I2C_SLAVE_WRITE_REQUESTED
 comes first then other I2C_SLAVE_WRITE_RECEIVED's > [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.135 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.135 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1jk7-0007uh-5E
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/06/2022 03:32, Wolfram Sang wrote:
> Hi Quan,
> 
>> When tested with ast2500, it is observed that there's always a
>> I2C_SLAVE_WRITE_REQUESTED comes first then other I2C_SLAVE_WRITE_RECEIVED's
>> follow for all transactions.
> 
> Yes, that's the design of the interface :)
> 
>> In case slave is busy, the NAK will be asserted on the first occurrence of
>> I2C_SLAVE_WRITE_REQUESTED make host to stop the current transaction (host
>> later will retry with other transaction) until slave ready.
>>
>> This behavior is expected as we want host to drop all transactions while
>> slave is busy on working on the response. That is why we choose to assert
>> NAK on the first I2C_SLAVE_WRITE_REQUESTED of the transaction instead of
>> I2C_SLAVE_WRITE_RECEIVED.
> 
>  From Documentation/i2c/slave-interface.rst:
> 
> ===
> 
> About ACK/NACK
> --------------
> 
> It is good behaviour to always ACK the address phase, so the master knows if a
> device is basically present or if it mysteriously disappeared. Using NACK to
> state being busy is troublesome. SMBus demands to always ACK the address phase,
> while the I2C specification is more loose on that. Most I2C controllers also
> automatically ACK when detecting their slave addresses, so there is no option
> to NACK them. For those reasons, this API does not support NACK in the address
> phase.
> 
> ===
> 
> So, the proper design is to NACK on the first received byte. All EEPROMs
> do it this way when they are busy because of erasing a page.
> 

Thanks Wolfram for the review.

On the first occurrence of I2C_SLAVE_WRITE_REQUESTED, the address is 
already received with ACK. So if slave return -EBUSY, the NAK will occur 
on the next Rx byte (on I2C_SLAVE_WRITE_RECEIVED event).

Tested this patch and capture using Saleae tool, it always shows ACK on 
the address and NAK on the first byte follow when slave return -EBUSY, 
ie: the byte follow the address, which is single part read command 
(0x03) in my case.

+ When slave return -EBUSY:
   S-> Aw(ACK)-> RxD(NAK)-> P
       0x10      0x03 (Singlepart read)

+ When slave ready:
   S-> Aw(ACK)-> RxD(ACK)-> Sr-> Ar-> TxD(ACK)-> ... -> TxD(NAK)-> P
       0x10      0x03                 0x07       ...    0xDE

Using the Logic 2 (with Saleae tool) to capture, we could see the log as 
below:

write to 0x10 ack data: 0x03    <= when slave return -EBUSY
write to 0x10 ack data: 0x03    <= when slave return -EBUSY
write to 0x10 ack data: 0x03    <= when slave return -EBUSY
...
write to 0x10 ack data: 0x03    <= when slave return -EBUSY
write to 0x10 ack data: 0x03    <= when slave is ready
read to 0x10 ack data: 0x07 0xF4 0x1D 0x00 0x01 0x00 0x00 0x00 0xDE

Thanks,
- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
