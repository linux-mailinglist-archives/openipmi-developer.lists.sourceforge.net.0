Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5CE4DC281
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Mar 2022 10:20:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nUmJN-0003pX-7t; Thu, 17 Mar 2022 09:20:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <quan@os.amperecomputing.com>) id 1nUmJL-0003pN-BG
 for openipmi-developer@lists.sourceforge.net; Thu, 17 Mar 2022 09:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2mvKKCUlLwm6dvjixifPyGGrXPmDURiGSZ/YPlI2wNA=; b=Uq1BkdoehPbOnJ24PaguVUI/7j
 pheHRkvSZFf5qqjaEfXp73TAwLByj4zxlgONTmDoBzbdZfgN3+VXbfI5qSC2ymjWiK6tM1/PdbDce
 j1TFDHvJUG7RH48ctloyZQskMRvEyJcPqObae6jbUDeKINl5SU/sNDApfcOFBgPcQY8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2mvKKCUlLwm6dvjixifPyGGrXPmDURiGSZ/YPlI2wNA=; b=U3tfuvSqBE/tVOB98N0Eci+D2V
 XP9ZqfIieP1d3cPgvxXgnJPddJICeIi56iL5U3qAQJMJBFUbH60PTbRsC16+0jVqBFtNlnM3G8xm0
 XI4e8yLjwbNuRm39gUHylIkL5xLw9v/qZ/w7ulj/B/bcsFRRV0jT7AhVVUZmKB+e7UnA=;
Received: from mail-co1nam11on2090.outbound.protection.outlook.com
 ([40.107.220.90] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUmJH-001lxS-8s
 for openipmi-developer@lists.sourceforge.net; Thu, 17 Mar 2022 09:20:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csA7nIFDJvXbu8YU1hLJGHhD58jZJmFtPPmCAQdysy2EBZ+1u7ycEImsugx6ArgWwUjhR8Gn2YL4PS/9MCK28PBVZ4RxdRSi1nN6xDhxNdoA5+u1L57Gs3tXDSN82BWPhj87CCYXS0vzSJVYxs2MUJ3seYBCAC+KBTocfmPe8DlUDZO5ZPuY6yu8iWHv7Ljl/cmt04rsahKhOxl9ykfSOBQGhNGAS1oFVMsYARUmeVNYC90353RFDSMgGqyg1Oa8mR7DTlfIINTtK/2pzU7MBK8i1mw/jJb5b5k1DKFTAA4p3CwqpCy1EMb3Ynr43OmjZJYLtZPptpPecT46BwUKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2mvKKCUlLwm6dvjixifPyGGrXPmDURiGSZ/YPlI2wNA=;
 b=ihdHBloWd1dIEMEjmJeFoqVq6zkAfBPccabWnuat4Rrl0/l6a5Kxy8RGNR625zeQD7/py2ey55uW5XNP1agR1e6sWLSdYGUxlvq+SSg1LIrX+XOqTgVrXYO5uHhVZGvGIr8Od8lZ1do4eAaYhw/g+fRxWWwpAmK6YLiX0IkRB4thLeC4icS86c5bqGxJsoRga1OADPbU+kpJTFGscB8+kybpouqPEFhI0fyexD9L2yQ6mWK87VoA7ZN3BubXLaVF/iyymQdsgsnPwHGlnyZCVNjx1/R6UkxgqckLeGyGaEtC5I+m+SV0rpVAkwlElQK4iuZj988INUUaJilgEsweQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2mvKKCUlLwm6dvjixifPyGGrXPmDURiGSZ/YPlI2wNA=;
 b=YokT8xMinaih3bY9uchW6WkMCvDZEb2MK9O7n9BibwDscWMZazitLFeoqw5Xzw7/UYOudMpBUpuRTFgpvOef26c1EQGRhZCykir+x5eNxellYJHHr19QUxBUmf3dSlvto3dSmnKRRr7aka8yhiKJT7go7IMV24usjHFpKeq2PeE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 BL0PR01MB5236.prod.exchangelabs.com (2603:10b6:208:77::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.15; Thu, 17 Mar 2022 09:00:18 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::cd24:39ed:7042:46d6]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::cd24:39ed:7042:46d6%8]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 09:00:18 +0000
Message-ID: <ba91c809-ad81-1f69-cc02-3f5cf28f6350@os.amperecomputing.com>
Date: Thu, 17 Mar 2022 16:00:08 +0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.6.0
Content-Language: en-US
To: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>, Corey Minyard <minyard@acm.org>, 
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220310114119.13736-1-quan@os.amperecomputing.com>
 <20220310114119.13736-2-quan@os.amperecomputing.com>
 <7cd9301f-f417-e555-6025-74acfc53598a@quicinc.com>
In-Reply-To: <7cd9301f-f417-e555-6025-74acfc53598a@quicinc.com>
X-ClientProxiedBy: HK2PR04CA0068.apcprd04.prod.outlook.com
 (2603:1096:202:15::12) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 617915d1-2e4d-4542-85a2-08da07f48f02
X-MS-TrafficTypeDiagnostic: BL0PR01MB5236:EE_
X-Microsoft-Antispam-PRVS: <BL0PR01MB523656E9C2BB45C8AA972E14F2129@BL0PR01MB5236.prod.exchangelabs.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LCQULnP66SYOWsPz7UCaoVtbNml020XkNHjWg623H8BDlT1pyLkkU8s6zY2q+fh7WkOiRsyBg+EZSrIpyfzKpC4X2i2CWn9QZLAMKRO7V0OCPhzMJa3lRS0DL5hJYwEBr4slrFnu3yS/x2gjMFnDupRg2sXCjKj9Y2oS+7Do7uR3YaTzF8GMRKO5fKBY2wNi8SjBEeaEhQoR7UHwMVRCJDmUBNQ5+rNQ0WjAy0RweeZq8iAysKipNFhbmiXDieUKJPpU+uDdpCtm4OVyhFMTlvDRqoef9H4i1dYwLNd8x+mmDCRvex0JaDJ1MkrY6cgAsjX5mGw/ZPmzG+n9Vf2+tW6FSaKuo/vdKsQEmiToKVjY65vAAu81bBypf7YOAFRbfgUWoowjcLAvZMuUNxfqSzI/5av9IdV4MjQWVp1ragPuDTqon5DhFUBVoELxuFxoC/ezvrz4YvxKxFNkv7583i9K9y0R520ngYE0CgaUtJU9twYriz8hdv3KORwG+LO0KsBI/CqL3E4ASeEwS13yEKdVsORB0cQKJkjjaxyPEbREdjMrFi1GouSYXSqI8H7hfr5+2ye5gF1Iiin7fg5/dagVaNZssG7Sreq6XnBk5kz0yMdDqzqwIhh8DxyF2FysjS1MJrp8oI+FsONPh3AqNG7myd3dK1pObdVMT5m34GmTa+L8hVqvfvOGGeKjYpaGqXRvibpC+bH+MYoQrax9eG4p5zN3Ewojkd7EMCC8nDnSUB8Te9xANrq7k88GhzlYH1Y0N0Lq5DwmB/cqxJ2ijg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(7416002)(6512007)(6506007)(2906002)(921005)(6486002)(54906003)(6666004)(110136005)(508600001)(83380400001)(31686004)(66946007)(107886003)(86362001)(31696002)(8936002)(316002)(4326008)(38100700002)(8676002)(2616005)(52116002)(53546011)(55236004)(38350700002)(186003)(66556008)(26005)(66476007)(5660300002)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGJ4M29KK3J2YWFPWW9FWEJkL25uMiswSVlBZTNKalU1a3ZPdVZ2SE5ubmh4?=
 =?utf-8?B?SlU3WHRDeFV2L2FreG1uY3dXc2xxSHpsS3RFSm1MaHFUTTZMaThqRlpCc3BP?=
 =?utf-8?B?UGJBcFJJSVNublY1dlo5NzFUaXFmdDZUdXhvM1hqSS8xRjBIVFhjNmJBTGtx?=
 =?utf-8?B?dTRBZHlHNnAwaHlUb0lYY3NVQzVvOFhTNjZxTEFaT28xWEo2T2thQlBob0Jp?=
 =?utf-8?B?Q3lBanVtVzFVNHJVeDFXVVpTc0dnbVlsWis5NUtZdm9NT1JFMlpma050VDRE?=
 =?utf-8?B?VmwzdnRVSVA0Q0N5cW12OWlPeVVjbVljQlJWOHRRUGRGV2JySk1mMjJFclNB?=
 =?utf-8?B?K1gybzVkUWVzQ2hNaUxYRTV2NmdNVXBJU1k2dDJ3ekhZamVhUTRXZ0hCdDU2?=
 =?utf-8?B?N1ptV0dFSEVsRTM3U3pUdjNVcXRpZjFiRHpRbWEwVTN4WnYyRmlsTkkvaHA1?=
 =?utf-8?B?eW54bGJpNHUwNERzUkM2ZldoWUtSYkFTSG9JR3ZBU1pKR2psMFByR09ac1dR?=
 =?utf-8?B?VjFjRUxJNmc2VlBZZjlURzdRb0ovVFJYTm4zRkdEQVNscENVaVB1WGZzYjBr?=
 =?utf-8?B?WEthd3ZXS2tOOW1sK3NRQzJxaTlYaEFkU1B0azhQSkFKWXVDU2doOGRjVEhL?=
 =?utf-8?B?V3o0T05uN0tPY3JDREtZYWFzVmV0emVraStscnlPREU3UTBVNkhhN2VqNXV4?=
 =?utf-8?B?dFgzZ000UXRtbVB4NmpWbHhuWWtIY3RHREFiYTBxdjNtMklMYUN3Qit3VUFZ?=
 =?utf-8?B?bW45NHl5Tm45Z3B3dFlmdUY1WHh3dUVPSFlhRUJsc3BPVEcwNmlSNWoxQUQ3?=
 =?utf-8?B?RU9YNVUwcU5Ra3BWTkxnZXhWaTh2L0FEK2VIVzN6aW1scERhZFc0ZWJvMXJa?=
 =?utf-8?B?aUlvS0ZmQlpKOEYzQmxGeFhTV1MydlprMERLS3pBZWdkdkZmWGQyVDNVRmM2?=
 =?utf-8?B?T0U0akRSQnFtb3poOVJVN1pzSTRlWGRHWE90Mm9Jai9WeXpiLzlkdmppekJ0?=
 =?utf-8?B?amJMRWQwdWViK1dHbXhCb1lVYUNmTVRPVkFFTmN4OTk1WkhSOGpSRjlnbkIw?=
 =?utf-8?B?QzVaQ094czR5QVFkT3pueWt2RnU1T0tsRk9kVlhSTm1oYlo4T1ppS25XZWwx?=
 =?utf-8?B?QVV4WU5nSkdzUUJKMkJ0NVFsNTdmZDdWWnAveEp5RUU3RXJxa0szUXp1dlQ5?=
 =?utf-8?B?UVd2UE1oWVQ2MXpyMGErZjVOZzZNRzZLUWxUWmJUaXZuQ2xQYUtYbnhvL3Nl?=
 =?utf-8?B?K0V3dGJrOVVpakNVSXg5SGNtNGpiTmpRSXV6dkFVZVEvSFphVjF0aUFvVXZ4?=
 =?utf-8?B?OWNFMmpIeUZTVlRVY2k5MzRuRFJNSTNtTzdlc0VFUDVmTG8yK20yM2ZrYzE4?=
 =?utf-8?B?T21FRmxmQmhIYm5DeGM3b0JDU2oraUpnbVRwOW93U3hxaHBwSEVUT2JrRFNX?=
 =?utf-8?B?SmpDV0hWencrb0cxNHB0dkUzbTlib1RVWVZ4MTNRWGVGSTJZS3JISmJISUlT?=
 =?utf-8?B?NUoyMkFlVUFqQjBxMHlLYmtlVU9NQnl2aDU2SXdFOTdPOWZ0UmhJSlQxcy9W?=
 =?utf-8?B?SUFqdi9rZm9FekYrV25vZVNOajA4US9ReFdCSmo3VDVLQVNCUXJnYUpZczhp?=
 =?utf-8?B?R21jek9ucWlpNlhZQjIzZ2EycVRKNzNTODhpdzF1Qk14NHpEbFIwdDlaOVhU?=
 =?utf-8?B?NjhGSjU5WGpvRFplNXZ6ZVd5Q3JGZXdadXBTSTNmR1BXV01wT01CUkF4d2Ra?=
 =?utf-8?B?NTkxKzZ2azN3SjdUbVU0NC9QWE1kNmMvaDJyR1lrTjFWWWlUaVZRQW1pWUF4?=
 =?utf-8?B?Zk01UDBRY2UvM1hFRzgzV0xxejcyRG9Mc3kzUkVYQkpqOGRjZDU2MS9NVmRK?=
 =?utf-8?B?Y1FJOFkvS0xSb0g0M3ViSk9QMk85VzFYRnAwZHhZNll2S3N5Z002S3g1VE01?=
 =?utf-8?B?YkMxd2F4S250VithVTN6SklDNUhZWlBxVGJzbFV4aHRHdDZHVjZ3S0N2Z29L?=
 =?utf-8?Q?sT+b06ivwDh56Z3p/DX2IlkmCi9uwU=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 617915d1-2e4d-4542-85a2-08da07f48f02
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 09:00:18.6578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: honCA59C7zFdfmNs04QZq+tGoKoXKU2E/G5hM0OKnUjVOrKSfaDs56I0HyO/hLtnOQEAnHNsM0bYpzN4S05MV199iTWbYvSZwTE3DxLKN+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR01MB5236
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 15/03/2022 01:15, Jae Hyun Yoo wrote: > Hi Quan, > > [...]
    > >> +static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc,
   u8 >> *val) >> +{ >> +    if (ssif_bmc->state == SSIF_READY || [...] 
 
 Content analysis details:   (-0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.220.90 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.220.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nUmJH-001lxS-8s
Subject: Re: [Openipmi-developer] [PATCH v6 1/4] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAxNS8wMy8yMDIyIDAxOjE1LCBKYWUgSHl1biBZb28gd3JvdGU6Cj4gSGkgUXVhbiwKPiAK
PiBbLi4uXQo+IAo+PiArc3RhdGljIHZvaWQgb25fcmVhZF9yZXF1ZXN0ZWRfZXZlbnQoc3RydWN0
IHNzaWZfYm1jX2N0eCAqc3NpZl9ibWMsIHU4IAo+PiAqdmFsKQo+PiArewo+PiArwqDCoMKgIGlm
IChzc2lmX2JtYy0+c3RhdGUgPT0gU1NJRl9SRUFEWSB8fAo+PiArwqDCoMKgwqDCoMKgwqAgc3Np
Zl9ibWMtPnN0YXRlID09IFNTSUZfU1RBUlQgfHwKPj4gK8KgwqDCoMKgwqDCoMKgIHNzaWZfYm1j
LT5zdGF0ZSA9PSBTU0lGX1JFUV9SRUNWSU5HIHx8Cj4+ICvCoMKgwqDCoMKgwqDCoCBzc2lmX2Jt
Yy0+c3RhdGUgPT0gU1NJRl9SRVNfU0VORElORykgewo+PiArwqDCoMKgwqDCoMKgwqAgc3NpZl9i
bWMtPnN0YXRlID0gU1NJRl9CQURfU01CVVM7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfd2Fybigm
c3NpZl9ibWMtPmNsaWVudC0+ZGV2LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJXYXJu
OiAlcyB1bmV4cGVjdGVkIFJFQUQgUkVRVUVTVEVEIGluIHN0YXRlPSVzXG4iLAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIF9fZnVuY19fLCBzdGF0ZV90b19zdHJpbmcoc3NpZl9ibWMtPnN0
YXRlKSk7Cj4gCj4gSXQgd2lsbCBwcmludCBvdXQgdGhhdCB0aGUgY2FzZSBoYXBwZW5zIGluIFNT
SUZfQkFEX1NNQlVTIHN0YXRlIGFsd2F5cwo+IGJlY2F1c2Ugc3NpZl9ibWMtPnN0YXRlIGlzIGFs
cmVhZHkgYXNzaWduZWQgYXMgU1NJRl9CQURfU01CVVMgYWJvdmUuCj4gTW92ZSB0aGUgYXNzaWdu
bWVudCB0byBhZnRlciB0aGUgZGV2X3dhcm4gcHJpbnRpbmcuCj4gCj4gWy4uLl0KPiAKClRoYW5r
cyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIFdpbGwgZml4IHRoaXMgaW4gbmV4dCB2ZXJzaW9uLgoK
Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNzaWZfYm1jX21hdGNoW10gPSB7
Cj4+ICvCoMKgwqAgeyAuY29tcGF0aWJsZSA9ICJhbXBlcmUsc3NpZi1ibWMiIH0sCj4gCj4gRG9l
cyB0aGlzIGRyaXZlciBoYXZlIGFueSBBbXBlcmUgc3BlY2lmaWMgaGFuZGxpbmc/IElmIG5vdCwg
aXQgY291bGQgYmUKPiAic3NpZi1ibWMiIGFzIGEgZ2VuZXJpYyBTU0lGIGRyaXZlci4KPiAKV2ls
bCBjaGFuZ2UgYXMgeW91IHN1Z2dlc3RlZCBpbiBuZXh0IHZlcnNpb24uCgo+PiArwqDCoMKgIHsg
fSwKPj4gK307Cj4gCj4gQWRkICdNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzc2lmX2JtY19tYXRj
aCk7Jwo+IApXaWxsIGRvIGluIG5leHQgdmVyc2lvbgo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3Ry
dWN0IGkyY19kZXZpY2VfaWQgc3NpZl9ibWNfaWRbXSA9IHsKPj4gK8KgwqDCoCB7IERFVklDRV9O
QU1FLCAwIH0sCj4+ICvCoMKgwqAgeyB9LAo+PiArfTsKPj4gKwo+IAo+IFJlbW92ZSB0aGlzIGJs
YW5rIGxpbmUuCj4gCldpbGwgdXBkYXRlIGluIG5leHQgdmVyc2lvbgoKPj4gK01PRFVMRV9ERVZJ
Q0VfVEFCTEUoaTJjLCBzc2lmX2JtY19pZCk7Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgaTJjX2Ry
aXZlciBzc2lmX2JtY19kcml2ZXIgPSB7Cj4+ICvCoMKgwqAgLmRyaXZlcsKgwqDCoMKgwqDCoMKg
wqAgPSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAubmFtZcKgwqDCoMKgwqDCoMKgwqDCoMKgID0gREVW
SUNFX05BTUUsCj4+ICvCoMKgwqDCoMKgwqDCoCAub2ZfbWF0Y2hfdGFibGUgPSBzc2lmX2JtY19t
YXRjaCwKPj4gK8KgwqDCoCB9LAo+PiArwqDCoMKgIC5wcm9iZcKgwqDCoMKgwqDCoMKgwqDCoCA9
IHNzaWZfYm1jX3Byb2JlLAo+PiArwqDCoMKgIC5yZW1vdmXCoMKgwqDCoMKgwqDCoMKgID0gc3Np
Zl9ibWNfcmVtb3ZlLAo+PiArwqDCoMKgIC5pZF90YWJsZcKgwqDCoMKgwqDCoCA9IHNzaWZfYm1j
X2lkLAo+PiArfTsKPj4gKwo+IAo+IFJlbW92ZSB0aGlzIGJsYW5rIGxpbmUgdG9vLgo+IAo+IC1K
YWUKPgoKVGhhbmtzIEphZSBmb3IgdGhlIHJldmlldywgd2lsbCB1cGRhdGUgaW4gbmV4dCB2ZXJz
aW9uLgotIFF1YW4KCj4+ICttb2R1bGVfaTJjX2RyaXZlcihzc2lmX2JtY19kcml2ZXIpOwo+PiAr
Cj4+ICtNT0RVTEVfQVVUSE9SKCJRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRpbmcu
Y29tPiIpOwo+PiArTU9EVUxFX0FVVEhPUigiQ2h1b25nIFRyYW4gPGNodW9uZ0Bvcy5hbXBlcmVj
b21wdXRpbmcuY29tPiIpOwo+PiArTU9EVUxFX0RFU0NSSVBUSU9OKCJMaW51eCBkZXZpY2UgZHJp
dmVyIG9mIHRoZSBCTUMgSVBNSSBTU0lGIAo+PiBpbnRlcmZhY2UuIik7Cj4+ICtNT0RVTEVfTElD
RU5TRSgiR1BMIik7Cj4gCj4gWy4uLl0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
