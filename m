Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41154F171
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Jun 2022 09:09:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o266i-0003Ou-GL; Fri, 17 Jun 2022 07:09:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1o266g-0003Oo-RM
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Jun 2022 07:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n5FUnSowGVPDt/JcvMhu5z3Xl8xn6bfInkWORFEUvR4=; b=iFKP6eYHL7lhYmhwp6V2qYv/yz
 MbYKYkimB1tl6hVvWax4mob1kTg14bRFBeNZ93izIFAcS4nqkSsZOzMP5tqf3J9A1Hgi4uBcaUN+J
 AnCinTtTQMQoxvhaF+P5yKazxgvUelvwUfBhvskJm8L1gB2zQnyUjtjQ4ShSfb2id/TI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n5FUnSowGVPDt/JcvMhu5z3Xl8xn6bfInkWORFEUvR4=; b=dlLrpVjxzp5IaJ54VXjJ7zkFh/
 RYaXRDn0Z+UXvNwQfc2QR1irAzG7kMmTZGmyEoRchm4EWSo7LlAMS4R/N4daWYZCRq8khTnjq4dJV
 qxY7CZnPoOm13cG/KTXrdRf4wAzK5yvRB9GmU1qRjSpzhkz/FynsNlZ/dyp+JOy233HI=;
Received: from mail-bn8nam11on2115.outbound.protection.outlook.com
 ([40.107.236.115] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o266Z-0005Bp-20
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Jun 2022 07:09:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jDxM9xi7duMKoQQB+qe4HfLNVeaewd0T6XC4Xy1rCrpmu2mYDtIsU19KgVd5BivNqgSYrycjPl+/PUSbu/qWYCScK0M388Y2Zd9quzgm+pCfyAlZ26Vs3H1+IN+YqsuePks9vEmKn9BnXoSE+QfBj7RwSMuJ31wp8ovbnayOOpbit0KSOuAjuLpGgHXnrO33gRK/Pxeh1b9O8GtnfW9i6MefV9Ipht4rPuiDDDdL9cC7/yREpcjID1OcDdVz4SvWn8YLYoffjIpqxAhRMUklBIV778nR/vQgDQq72613QVXweuDbnTxRb1A0oSWoifkgS/0Y52YTR03JgtTYC9LSig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n5FUnSowGVPDt/JcvMhu5z3Xl8xn6bfInkWORFEUvR4=;
 b=cw7AelCsxCjoJ3i4ZVHgLinvi4UHrpHr58/af3z0TNY1mngmHpklLf6VVVjPiz4DWEXVUHIhbX7P1y4wvqPyk5RBC5Y4zl8m+Go2K/QXquLx1acQrCyCBE6ZMuwmZ43mzGE2bJyFnM4DrPCgDOMCX3OuIVQoeAfqJ9Q8WbcXfduwYMYxuSrSuZBnJ2hSnzHsq4Frd5I6LiwAniUYz4DY5uSRy1JdiJGJrofz2DYk99MKnZVuXlVHeNabEqHP0pE92cq6i8qUZWiJPbsf5x2RmYZB+XxPVZQjDT+54L6VuNNvoNHISbDlbpDw9v/y6iGHXoUuPGiEytg9EU7X0UoHfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5FUnSowGVPDt/JcvMhu5z3Xl8xn6bfInkWORFEUvR4=;
 b=ctpOcECxaIk4wl3JQhPhC3jDMvZQPnh8kyvok4EtttN9VdlZTJDpOVwcGt5OAninQSNWOxRpAk2yrb6oyseLuSGi2FHkeyYOBLZBYrgRYNeaNlO7PwrN8DSjqLUVwK1C4AkhK3MkxfSjxpoQpls1vYqHWzlz+yrzBYxvxAgo17c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 SA0PR01MB6298.prod.exchangelabs.com (2603:10b6:806:e3::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.16; Fri, 17 Jun 2022 07:09:10 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7535:773:f979:893e%7]) with mapi id 15.20.5332.020; Fri, 17 Jun 2022
 07:09:10 +0000
Message-ID: <27f5999e-40a6-311f-20f1-331a0f4447da@os.amperecomputing.com>
Date: Fri, 17 Jun 2022 14:08:55 +0700
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
 <bf001ece-e981-3a06-53fe-6a8b637d69fe@os.amperecomputing.com>
 <YqsiRW78NAL9rX9S@shikoro>
In-Reply-To: <YqsiRW78NAL9rX9S@shikoro>
X-ClientProxiedBy: SG2PR02CA0006.apcprd02.prod.outlook.com
 (2603:1096:3:17::18) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 128583de-9f4d-4a56-58b5-08da50304671
X-MS-TrafficTypeDiagnostic: SA0PR01MB6298:EE_
X-Microsoft-Antispam-PRVS: <SA0PR01MB62983DCEACA274804107BAF8F2AF9@SA0PR01MB6298.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3ssT6d5LV4ZB33zzD4PpHls296vMyYwVXHAcobcVHg10yWElPOVPWUJiTnf7N9AO12LpHhJ20ynHpVbGbwYhtabhmXuBwHqFxvwq1+8LAPTlD0D7e7/acP+fUomx6bI4bsNsZMvTFmIhcj07MDUt1Kj5FVZ19K8wnQxE2waEcEZP5ODnF26gvrj1mGZVcP1LyPT7y7dPPXY1WNT8wb7naexUQ3xW8DvO72h/PvqyGMAI+p1FzuO8x1H+6W3es0lfO7Z0zSbu0JCY8F2YUGtn3FVDXQj08Cv1bT+u55hgUfAgC0/exYxF9JaolZKEN9hiXXTUQ3hjv6YqokY7XO4b/UTg2Zl9EUdVrqV/KdTsuP6I+fLUQiWdPax5P04gI/6kXZaaSwjaJVlSa9oaJrW9TTNFK1DfRcvIFyh1F/XOhuOmz4IvL2LeClBibKbqtIWBVry9HPKmtse6oxpi+EcfX0xlSlVwr+ibMPcL9iOVWRAE3ClbTC4fiySGososcchaVixm1MeAdCb+cxEhzloIfpjI4R/65Y5BxDpiv4YH8amf5webNWX3WsGD+EboDGLZ43KnrWX1Tc+QrOO68fw+iUFDpG0KKs512Dx5lWYCipB3cHfKKSW6wFZQd2/cz6r7CuXDtqbaaWNFJWzCk2kZMfS73KfpW6o2qOkHfsFXiOykIdJJXzebY6IaeUjpCfCFekofITZlPZ52i8y1gb0L2VZpX52szY+6Zlw7NdQZ/o9mhNzZd78MAncAWcl1BNaZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(2906002)(8676002)(38350700002)(66476007)(66946007)(66556008)(6636002)(86362001)(5660300002)(31686004)(31696002)(316002)(7416002)(8936002)(6512007)(52116002)(53546011)(110136005)(6506007)(26005)(6486002)(498600001)(83380400001)(2616005)(38100700002)(921005)(6666004)(186003)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjNlOS9oNjhZeVo3SXk5cGFFYUExMkhRaEFqZUJLUVZlSlBabE1JYUN3UWYz?=
 =?utf-8?B?aWUxTEFLRGpVb3FFVjk0ZFZab2VqMlVjQXF5RTYxMkhmS0VtNTZVV0x5NURp?=
 =?utf-8?B?aCttY1BVKzhoVGlJdEN2SElJUnRkckYyRmZLYUY0ZENLWU9oSDZ2eWRqZU56?=
 =?utf-8?B?ekowRkRoK0UvSVNlWldVOXhXU2YrcVAzRVJjY1o0OTZXODlpUzdXMzdHclNj?=
 =?utf-8?B?VTQ4dzZWM3Z0L1FHZUpnc2pzWTYvVHdMWUpIUTJkaDVnbmh6SWVPbUtpbWM0?=
 =?utf-8?B?L2lJUXR6ZThDMnlyTlJwMEdtcUduaml4MlNlaW15QlVpVWtSQkk2dEp5TUpw?=
 =?utf-8?B?S2Z6NTduV2piVVJIaHlnbThzcGNXcmFZQUxCdk92Y2RTa3M1cXRMWHBZdkow?=
 =?utf-8?B?b2xhdkxIcWRJTDg2eFB1Ujh4c1M2T1lqbGVQRy95bXFIRjVDNEM3a21hWnZo?=
 =?utf-8?B?TkpydUhrS0FnRE1yZVVPa0oyTzM0NVlCUEFsK0hlVnl5TXpHbzk4LzVsUVFi?=
 =?utf-8?B?eVM2NEM4Uy9pRmFOdjc4cnVhbkxrTGY1UDR3RlN5VjlJSkFTVjc1cHZwMkJG?=
 =?utf-8?B?TU5YVTZubllubFUyTk9iYzR5Y0RDczFQQTNJMWtjemtyc3UvSmdBQnUyWTdp?=
 =?utf-8?B?cEd1MkRLbnB6SWRGSGxCNkRqMkZHNWM2d0tzNE9NTEs2ZzkzbEpQSm8xN21u?=
 =?utf-8?B?V1RVM2NtQ0NyTGd1UzNMbGxCdzhVR0paOTBRd2ZRQWtoT3pUZVBqcEs5V1NK?=
 =?utf-8?B?bWxNQjNEYldjajlHWFJpUEUxUHVudjBOaW5pUldiMUkwMzJVa2YvcVNnb2dO?=
 =?utf-8?B?RXNtZ3pMQWM5NS9pV1RsQXZBL1lZbzBDaHJmYmVSRVRxYjhDa3BMUjBGM1Nx?=
 =?utf-8?B?UXA4aTg5YzV5ODZQYlA0NjB4WXgrQjNIRUdtQkFaN0tsM0NSVmZ5MnNGem9D?=
 =?utf-8?B?a29vM2JmWmhLM0F0eS9uWWVSRHJ3UkMray9Pamg2UElWSnRMUEwzSGF6VDYw?=
 =?utf-8?B?bDJMbVZSeGIzRFEvb3pVclI3bEhyWSs2VFRUMVJOR3JwL0lMd2NqVE5kd3py?=
 =?utf-8?B?d1E1eitFbmV2aVM3YVhIVmFFNHgranZvVFhOMUxGWWdmMzJzZUdDdTB4Ujlm?=
 =?utf-8?B?SnI3VDJVYkhGRmZuYlNRcTY1MmVROGkvVkExYW1BOTV3RzdHS0ZZaGt1REJY?=
 =?utf-8?B?VGc2T1gxVE50WlRJbjc5Q3hRbVUrdTYrUkh6SFkxS2wzZ1Y4M1ZJc3VhdjNq?=
 =?utf-8?B?RURsTmRJQkRoMmhUcmRiZzdTdWNqMW4wN3c0N1BwRWhMMGxnUUFVQmNjZTFV?=
 =?utf-8?B?VDZWNUpzMTd6TkVhR0NSbGhvbmx3Y1VyRTRwN09uZjQ2eVNlU0xsR210WDFT?=
 =?utf-8?B?dW9vdlpSODRoOFNkQUVYdWxqNXAvd3cyb051V1MxSU9zKzJCcVozSzIzNVRw?=
 =?utf-8?B?ZDVLZ2g1OFV2ZFVmRDl5TGVXcXFVWGNCTnBZdHIyZGdodGFhU2prMHNRWXpQ?=
 =?utf-8?B?akR6ZEtYQUJXVjUvVEMvQXcybnc4TTNVYVljWkZzc25tYzcxaVVuSEI5OWph?=
 =?utf-8?B?U0YrOUZMZzJzQmdxeURrWENFcVhYRnJOazhXdlNBd1NLMmJDdTRmKy81ZnRT?=
 =?utf-8?B?Z2dUeFdrZk1NOHErajlPS1N6OUovZ3QvdG5TRHZzVjBKc2R2anVxWkxoWnBQ?=
 =?utf-8?B?YkpmZndUTVlncGlPUCtyZ1JnK2p6RUsrQXBoWWhkS0M5U2JJblhvODdIMkRW?=
 =?utf-8?B?MmQrN2lVVUJvL1RSbFdUckR5UzVZRTJ1dG9NS1JzbmhOL2xuMTQrVzhYdHZO?=
 =?utf-8?B?cHBaQUlLZkJrWVlzcFNYMnJNYjRWZFBkaytKTlVKd2RENzh5SmJmRUl1bnVW?=
 =?utf-8?B?ZzV6VnAvRVB6YkFFc242S1lUclVVTlFSa0lCSmRLb0lzYUxzcHFlNDhRTGw1?=
 =?utf-8?B?WmR3Y3A1S2x0L3dxTC9NUExPT25saWw5NGVHT01pYVZtWDR2eWFUZUhlQ2Iz?=
 =?utf-8?B?M2NORHZpMU9qSy9obS9xOXRtTmJoeGUybjMrRlBUNlcwaEVDdUt6amNKRHRC?=
 =?utf-8?B?VUUrNzd6bFpZMEo5V0lhWkxQS0ZDZTF5b0NYMVFjcVh4Y1B4NjZYTk9lNFVt?=
 =?utf-8?B?OVBPb3dFSDhzNFBMUW9acThETmdaSkVYSHlLNDZqajN6ZVExS1hNN2FnK3dQ?=
 =?utf-8?B?bFlWamFoL3ZndUZCTEtBMlQ3Ni9pZjUzM1h1YVJZVG40ZG03dDd4c3VxSGVX?=
 =?utf-8?B?THA3dGdvUENtVzNBRWo1eWNPRTJWMlJPem82U2VFZ1krNStncjZRSkpWK2Ni?=
 =?utf-8?B?UGs5YmJFaSs1OGZjd3Z6bmxnZkp4ZkkyY1J5bE40eElXcnNvOEhDMXpFdXhn?=
 =?utf-8?Q?bLA9KdkT7LFQ7fB12LIcceQQyexdBrfu4Kjpc?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 128583de-9f4d-4a56-58b5-08da50304671
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2022 07:09:09.9331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0kxrWUv+2FC2SsqlmkIp8kdxX4NEn6H8vc8mlpaQu+dUin9maAvP64J3UpTJoOdlFPSUTV6fD1d3EKp1k3RyBqQ4iqBnZkAzoCZChkaE6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR01MB6298
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/06/2022 19:29, Wolfram Sang wrote: > Hi Quan, > >> On
 the first occurrence of I2C_SLAVE_WRITE_REQUESTED, the address is already
 >> received with ACK. So if slave return -EBUSY, the NAK will occu [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.115 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.115 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o266Z-0005Bp-20
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

On 16/06/2022 19:29, Wolfram Sang wrote:
> Hi Quan,
> 
>> On the first occurrence of I2C_SLAVE_WRITE_REQUESTED, the address is already
>> received with ACK. So if slave return -EBUSY, the NAK will occur on the next
>> Rx byte (on I2C_SLAVE_WRITE_RECEIVED event).
> 
> This is exactly why I2C_SLAVE_WRITE_RECEIVED allows for an error code.
>  From the docs:
> 
> ===
> 
> * I2C_SLAVE_WRITE_RECEIVED (mandatory)
> 
>    'val': bus driver delivers received byte
> 
>    'ret': 0 if the byte should be acked, some errno if the byte should be nacked
> 
> Another I2C master has sent a byte to us which needs to be set in 'val'. If 'ret'
> is zero, the bus driver should ack this byte. If 'ret' is an errno, then the byte
> should be nacked.
> 
> ===
> 
> 'ret' is used to ACK/NACK the current byte in 'val'. That's exactly what
> you need, or? Does the aspeed driver not support acking the current
> byte?
>

It is true that aspeed driver does not support acking the current byte. 
Setting ASPEED_I2CD_M_S_RX_CMD_LAST will take effect on the next Rx byte 
as per my observation.

S-> Aw(ACK)-> RxD(ACK)-> Sr-> Ar-> TxD(ACK)-> ... -> TxD(NAK)-> P
      (1)        (2)

Currently, setting ASPEED_I2CD_M_S_RX_CMD_LAST in (1), on 
I2C_SLAVE_WRITE_REQUESTED event, will make the NAK happen in (2) and 
make the read stop.

If setting ASPEED_I2CD_M_S_RX_CMD_LAST on (2), ie: on 
I2C_SLAVE_WRITE_RECEIVED event, the read from Master is never NAK 
because there is no next Rx byte and Master is already switch to read 
from Slave.

I understands that the return of
i2c_slave_event(slave, I2C_SLAVE_WRITE_REQUESTED, &value) is always 0 as 
in Documentation/i2c/slave-interface.rst. But with this case, this is 
the way to NAK on the first byte and I'm wonder if this particular case 
would be supported somehow.

Thanks,
-- Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
