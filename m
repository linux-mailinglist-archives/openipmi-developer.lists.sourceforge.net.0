Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D5E38BF1A
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 08:10:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljyMk-0001ej-QW; Fri, 21 May 2021 06:10:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ryan_chen@aspeedtech.com>) id 1ljyMY-0001dM-Uo
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 06:10:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GRuujb/Kcaw3U4s+RdPsJ2BRaTZ1ywwEWLskCPsRxeo=; b=DHjf7BueX2w3Nyjlr88O2toTns
 wVDlbdTX92eId1ntJAiPWicdhufr2ABKL9e0rVlBP/Y4bu86BZfuWdcSr17uLmvcPYO7RJBt2iqNS
 CEHShD/AYBqN3FR6ALJJcSJAgwPqN/1MU33Cbjgi/7o8Iahhhz8v1FDDYROw6au7jZ34=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GRuujb/Kcaw3U4s+RdPsJ2BRaTZ1ywwEWLskCPsRxeo=; b=jW+iNN20m3+ZIIfLh+QpwF11k2
 SirVe58F9P+L+I1f2twx2e1AIj33PYGSdVRVAdZFrWGjxqkjAh3bf/2ygMzzh+AAxM4Mg3B5ffdt5
 1yPWGHKTwSN7PRTJlBRNYBF7WYXAoYKJCKYyA+EV+Vdf0jgf1pUlXkImfszZm1/ZIKOs=;
Received: from mail-eopbgr1320099.outbound.protection.outlook.com
 ([40.107.132.99] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ljyMG-0007Px-Eb
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 06:10:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSzLZQMkMyxjVDCITbpTGOsTY9FtmZGD4HxniSr9CxgtDCfbw3Gdn69cfkWBn4AwOySvuOoFfgEBACvGScZqwd3gT0KKFF9DmCRbhyANCVn9jx2lKMXMwaP8pjjQ2PYQfATe65ELu2sa3eGk3Z2ZSw3JuW2Ye7AQvUvzwW6sd/E4ozai3XhfQD8AN4Z9vLdKC0WL8NGKhYsk5DRtLEhY2b0zX3kkB+CSSHr3D9G9Q7B78L99iC0+BzyBGOZCABsOEsXZgguh4oiX1YllmuLLhfR7kk0YZgDQR2EsKmra7DC5goTZjhv6VxRVsrcqTASL6SCcDsUXfXPWSPsLEv6+4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GRuujb/Kcaw3U4s+RdPsJ2BRaTZ1ywwEWLskCPsRxeo=;
 b=nWU1cogWm9pYvxgV0XPR64cfAOfbEYgtX85N+oVwLTpL7AXoAtDZ7mu10fZYfyYpjd3FNu0bwvh8NygFsUyCQgjGO61DcbTpzV38AXO2dRDntXbFdvr561TIGCevRc0pTplY3AmjgVaSSGM/hcU7wnH2S3yYt8FZbTV7rrKIRl0tI+b/x/NBH/fTuHQdQUAX91GSadgrnnXRZpveh7qsCCBEk80yaZm+wAiq/R+W9EScH3lzWk5DH5XjaRpDxmw5za0N/rjkfIv8UuoNmE9VLEuRVlLZ4I9/i5NR4R2WyYRT0a8RHJ97XWkKyPiVECDhTVfihb9Ie78CfFtVM2+QmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GRuujb/Kcaw3U4s+RdPsJ2BRaTZ1ywwEWLskCPsRxeo=;
 b=EpbT8vkf/XEugK+sE+DIABwM3mR8gAhM4ez92WZ/O0WlGNzxKymkdfbAnRZcj/dfIDgsiq3KkX82GOrAICn46CFkRzdELeHR5RczObw67ahJUrQXW177jbkwJGiQMgF7+ICDP+g1oTxrORb7Uws6MxptDI3q91wAN4rLKCTgLs12mEctJ4l5zj1F3TiPIXSfzCm1PoDxmbLzKs14nMqgma7QscKBMaAdGPRElSk/RMuQBED0Zof04OrqK7foZR+Br1BGhh7LGax6ZpmDwSTyV+EmDnf/9/j64lxmNKwb0bK4Zi/Mz99B8eZ/luBYFgUN+hskUw7u4vEV/WTwCVn9aw==
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com (2603:1096:203:82::18)
 by HK0PR06MB3201.apcprd06.prod.outlook.com (2603:1096:203:84::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Fri, 21 May
 2021 06:09:57 +0000
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6]) by HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6%7]) with mapi id 15.20.4129.035; Fri, 21 May 2021
 06:09:57 +0000
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard
 <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Brendan Higgins
 <brendanhiggins@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Wolfram Sang <wsa@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>
Thread-Topic: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
Thread-Index: AQHXTIQCISnhT+/XbEiDVKSu2FVXwqrsNmDAgAA0VYCAAQwBAA==
Date: Fri, 21 May 2021 06:09:57 +0000
Message-ID: <HK0PR06MB3380CCA6A264A6D0E6E462FDF2299@HK0PR06MB3380.apcprd06.prod.outlook.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-6-quan@os.amperecomputing.com>
 <HK0PR06MB3380BFA9FD9EF8F51F9DCC23F22A9@HK0PR06MB3380.apcprd06.prod.outlook.com>
 <3eba7d01-2507-17c6-2b27-7f1a7e286413@os.amperecomputing.com>
In-Reply-To: <3eba7d01-2507-17c6-2b27-7f1a7e286413@os.amperecomputing.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: os.amperecomputing.com; dkim=none (message not signed)
 header.d=none; os.amperecomputing.com;
 dmarc=none action=none header.from=aspeedtech.com;
x-originating-ip: [211.20.114.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a6e5946-a605-4f2c-1c9e-08d91c1f0f40
x-ms-traffictypediagnostic: HK0PR06MB3201:
x-microsoft-antispam-prvs: <HK0PR06MB32015B5BC1065ADB48F55468F2299@HK0PR06MB3201.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9qZJpqDX6d7VIQ5S+9K3xvLuhi6ixxicjswKxf92cOGLq2jnvK/qw/y1ylcIlGNzRlJ7uCsyL/Sj7LeP2KDNEwOCKCUg1DdJURMKSetkTZEzU1Go6y0+bLi0+z3DGxD+MSbeIqfQK2B8SaFo9fzyALManjKxeEOknmZ1pUDNT14/7SZ1d5sop+GUQLNH5R607PRwnFs4SBOAEEMdHNkNdQLoaB/L+vOj/wI8YolXFEdlXRfo7wSFnBq0qaxv5/bqeZoMnQHCJzI8hnuckW8T9dChdkaOn0kT/H/6Q3qOPz6KC5im4isNgfIXVPCWVCZUEd1xj8Ppr25Vo8T/rMxMNMffXbePqdL+ODOxMx8U1qsuJNDQDY0EuEtanWvt3nUxHZ08bWpB2UP9OYA73JdwNF1ardLVdd0pMgly8pGYLvAkerzVpyesJmZw3kTEpvSdrtrhlCiZL8wgih8aU+7d0S7t5cqOrE0yh1M+iQiWj7mC2HbBJVlPc11xZjjo1hor2XZKF8NUrd4c5rZuHa3OhMkjyTBaA7bgw9S5Gxbx2UgS4cR4/fca5tds1auMD6ZGi1atpWe/zQlg5lAxZ7g99PBfF8WydiAybPvrCNl0W56H0N6L92+1letSOEAME9LbXUW3+AXAnUk7xO3XqPjPcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3380.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(39830400003)(346002)(71200400001)(52536014)(26005)(83380400001)(9686003)(64756008)(921005)(66946007)(7696005)(66476007)(66556008)(66446008)(2906002)(55016002)(6506007)(53546011)(55236004)(33656002)(86362001)(4326008)(54906003)(110136005)(8936002)(122000001)(38100700002)(186003)(76116006)(5660300002)(7416002)(508600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?QkhxMU8yYWYyVUZYcW0zL3orVjNJZkRFU0tWdGtwZk9mTU5sUUZyekhSaGE3?=
 =?utf-8?B?K3diMTdqU1BIdzFGdHA5aDU5RUhmN1E0ZVo4RlpXb0E5cWYrblRNdDRnUTVj?=
 =?utf-8?B?RldmUG9uT3JmWWFxdVpUbVBHWm1Od0pkTjFuTDV0YWl0OWxHWmU4MG4zZTVC?=
 =?utf-8?B?TEtMbDVtRmZFSmkzZGIwOEpHQ05wTlBmNm1SaGpvck9CbUJWc081ajdLbVRm?=
 =?utf-8?B?RGZMaWkvVG5INkRiRUU3blVDdjJxM1pIdVpLU0t1NUdZenRIWGkvb2E5ZU80?=
 =?utf-8?B?cmxXV0FhalZnVWlsSld5OTZjV0R3M2RSZ2pGOStSMjdscGdORlZGNVcrNENu?=
 =?utf-8?B?Wk1EbWNPdUNPT0NIYy9lTCtXZmJ0MDFXTk93Q0h2TnRZVWZRRXpqRmpRaGJX?=
 =?utf-8?B?RHd4dzBRQitGUS9rdm5aRWlsTzEwcTY3akxvdHp5Sjl0T21PaGxYbFI1bUpk?=
 =?utf-8?B?R3EraHpWMHVUcElUOEQvdkYzL3AyQWRRUVQrRHpvLzgyNGxtMW5uR2Q4cTlU?=
 =?utf-8?B?bVo4bmQvQmlpNzJNbUM2VmIrc0VHNkV1eUxSYStKTG9iejhrMmdmRHlkdTl6?=
 =?utf-8?B?RTROUCt4YzlibldqcE9wNURkSUtEemliNVl1dGZqcnoxUnBEc2JLSGpwM09q?=
 =?utf-8?B?dWJSLys4QUllN3JGUXU5YS92OGJMOGhKNlppM2J1bXYwN1FQUnJUUm5McnU5?=
 =?utf-8?B?Rnh0MW43bjAxQnhaRGFxM2QxaVRkUDhrTG9WU0luZHlWcGJ0a2Y2UnBCUTVT?=
 =?utf-8?B?M0pZUnpPTG9lZ3pyT0FzQWxKUy80RTVlT21ZcUVTM3U5eHI0eGRBbzVKb0tr?=
 =?utf-8?B?ZTg3U1BJZnZ6d2ZWUFozeW1WVnMxWFgvVUdKNmJNTG1JOTJSVkozSHE0M053?=
 =?utf-8?B?bk9kbVQxZStKZ2J5cU5JcjJOUlE1YWljTVp2RVJXQ1l0bElnNEN0WStJVXdv?=
 =?utf-8?B?aEJtUW4zQTFYMTkvSWhtZEZyc1lCSlJ3YjdQRWg1VzFidis0cnlRYnVLQVBw?=
 =?utf-8?B?VVNjV29aZDVieDdheHRqbUNES3JzbCtVZkhKTEFiKzF2R0RVVFVTeU9wTjlP?=
 =?utf-8?B?a3hOMVBuOE9DcXZNTHo5Wi8xVDdGenFLVmxkSFB6SDkxK0l4VkpvL3VUSFd2?=
 =?utf-8?B?VGxJQzQxTTRXaTduRGtWSHdnalY3N0Jlcms2U0VibkgwbUx1S29MYVJpdDNG?=
 =?utf-8?B?SDEybk1YdEY3b3VoV3BJeXk4ZXZEUUtxeEN5bGJxRkJDOVpaSWJsWFYvYm5a?=
 =?utf-8?B?TElEN1hYUGtXZFZ0S0FYMFFlR1YrMzlrSWFJR2xKUUt5cjJyRnZJa3JzY1k4?=
 =?utf-8?B?Tjk2N09QV3ZUampvWStsSS9DT3RFZVlEcy9Yc1hSbnFtWno3d2pxSzdKS3lZ?=
 =?utf-8?B?OTQ2dWYrakRRVmVQd01VSU5XS0FsdWQyTkNqaUdPVTZUOHNCSTZiaXZRdDF6?=
 =?utf-8?B?cGthYURiWXNrZEROdHp4aE1pck1Ib3Y3UEQxOWRhL29wWXhRcVQ4VysyK1Iv?=
 =?utf-8?B?S1lLT0c3WjRJanJ2TDVYVzVEeVRJRDA1VXY3SUljb3JBVnpIeHVBdXRsbTJU?=
 =?utf-8?B?RjVaMWdpaEpKU1hBbjR3NkhOVURpNWhxeXY1Q3NDbWtPUnhvNWNhQWJCMlNR?=
 =?utf-8?B?YWt1a2NnK2Njb3Nya0IzZERXTXhkNDQ2a3BTaEExdjNrSndZNXRNN01PazZs?=
 =?utf-8?B?MDZFejMyejhEbnhYeVRRSllGUi9pdVZrQnQydDJwMytXSmRwSXU4SnEzdGxl?=
 =?utf-8?Q?qtmD+CgJDtPzMisX4jS87Isx6NxllUaX+cZtKmh?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3380.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a6e5946-a605-4f2c-1c9e-08d91c1f0f40
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 06:09:57.4090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0oW+9FEJ4e81gCbLx6yMj6wUezvyqQ7VanjKvIJRbio1ek4Ty1fHZomuobu7qanT7CVStcMt6o8kahUTSnCkHlyu22WKo+mor/5oJ31Dwjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR06MB3201
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.132.99 listed in wl.mailspike.net]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1ljyMG-0007Px-Eb
Subject: Re: [Openipmi-developer] [PATCH v3 5/7] i2c: aspeed: Add
 aspeed_set_slave_busy()
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> -----Original Message-----
> From: Quan Nguyen <quan@os.amperecomputing.com>
> Sent: Thursday, May 20, 2021 10:10 PM
> To: Ryan Chen <ryan_chen@aspeedtech.com>; Corey Minyard
> <minyard@acm.org>; Rob Herring <robh+dt@kernel.org>; Joel Stanley
> <joel@jms.id.au>; Andrew Jeffery <andrew@aj.id.au>; Brendan Higgins
> <brendanhiggins@google.com>; Benjamin Herrenschmidt
> <benh@kernel.crashing.org>; Wolfram Sang <wsa@kernel.org>; Philipp Zabel
> <p.zabel@pengutronix.de>; openipmi-developer@lists.sourceforge.net;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org;
> linux-i2c@vger.kernel.org
> Cc: Open Source Submission <patches@amperecomputing.com>; Thang Q .
> Nguyen <thang@os.amperecomputing.com>; Phong Vo
> <phong@os.amperecomputing.com>; openbmc@lists.ozlabs.org
> Subject: Re: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
> 
> On 20/05/2021 18:06, Ryan Chen wrote:
> >> -----Original Message-----
> >> From: openbmc
> >> <openbmc-bounces+ryan_chen=aspeedtech.com@lists.ozlabs.org> On
> Behalf
> >> Of Quan Nguyen
> >> Sent: Wednesday, May 19, 2021 3:50 PM
> >> To: Corey Minyard <minyard@acm.org>; Rob Herring
> >> <robh+dt@kernel.org>; Joel Stanley <joel@jms.id.au>; Andrew Jeffery
> >> <andrew@aj.id.au>; Brendan Higgins <brendanhiggins@google.com>;
> >> Benjamin Herrenschmidt <benh@kernel.crashing.org>; Wolfram Sang
> >> <wsa@kernel.org>; Philipp Zabel <p.zabel@pengutronix.de>;
> >> openipmi-developer@lists.sourceforge.net;
> >> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> >> linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org;
> >> linux-i2c@vger.kernel.org
> >> Cc: Open Source Submission <patches@amperecomputing.com>; Thang Q .
> >> Nguyen <thang@os.amperecomputing.com>; Phong Vo
> >> <phong@os.amperecomputing.com>; openbmc@lists.ozlabs.org
> >> Subject: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
> >>
> >> Slave i2c device on AST2500 received a lot of slave irq while it is
> >> busy processing the response. To handle this case, adds and exports
> >> aspeed_set_slave_busy() for controller to temporary stop slave irq
> >> while slave is handling the response, and re-enable them again when the
> response is ready.
> >>
> >> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> >> ---
> >> v3:
> >>    + First introduce in v3 [Quan]
> >>
> >>   drivers/i2c/busses/i2c-aspeed.c | 20 ++++++++++++++++++++
> >>   1 file changed, 20 insertions(+)
> >>
> >> diff --git a/drivers/i2c/busses/i2c-aspeed.c
> >> b/drivers/i2c/busses/i2c-aspeed.c index b2e9c8f0ddf7..9926d04831a2
> >> 100644
> >> --- a/drivers/i2c/busses/i2c-aspeed.c
> >> +++ b/drivers/i2c/busses/i2c-aspeed.c
> >> @@ -944,6 +944,26 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus
> >> *bus,
> >>   	return 0;
> >>   }
> >>
> >> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> >> +void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy) {
> >> +	struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
> >> +	unsigned long current_mask, flags;
> >> +
> >> +	spin_lock_irqsave(&bus->lock, flags);
> >> +
> >> +	current_mask = readl(bus->base + ASPEED_I2C_INTR_CTRL_REG);
> >> +	if (busy)
> >> +		current_mask &= ~(ASPEED_I2CD_INTR_RX_DONE |
> >> ASPEED_I2CD_INTR_SLAVE_MATCH);
> >> +	else
> >> +		current_mask |= ASPEED_I2CD_INTR_RX_DONE |
> >> ASPEED_I2CD_INTR_SLAVE_MATCH;
> >> +	writel(current_mask, bus->base + ASPEED_I2C_INTR_CTRL_REG);
> >> +
> >> +	spin_unlock_irqrestore(&bus->lock, flags); }
> >> +EXPORT_SYMBOL_GPL(aspeed_set_slave_busy);
> >> +#endif
> >> +
> >>   static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)  {
> >>   	struct platform_device *pdev = to_platform_device(bus->dev);
> >> --
> >> 2.28.0
> >
> > Hello,
> > 	The better idea is use disable i2c slave mode.
> > 	Due to if i2c controller running in slave will get slave match, and latch the
> SCL.
> > 	Until cpu clear interrupt status.
> > Ryan
> >
> Thanks Ryan,
> 
> Do you mean to enable/disable slave function as per example code below ?
Yes. it is.
> 
>          /* Turn on slave mode. */
>          func_ctrl_reg_val = readl(bus->base +
> ASPEED_I2C_FUN_CTRL_REG);
>          func_ctrl_reg_val |= ASPEED_I2CD_SLAVE_EN;
>          writel(func_ctrl_reg_val, bus->base +
> ASPEED_I2C_FUN_CTRL_REG);
> 
> Will try this idea.
> - Quan

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
