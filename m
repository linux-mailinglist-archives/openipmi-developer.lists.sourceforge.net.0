Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA378268AEB
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Sep 2020 14:28:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kHnbK-0003Az-0O; Mon, 14 Sep 2020 12:28:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hidehiro.kawai.ez@hitachi.com>) id 1kHnbH-0003Ao-0b
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GW69tT/mY+GxW/dit/fEjy2/QtPjD8H5zhc4gWDGiKU=; b=TuUV/MFpSbzFy8RJaebovl76uh
 n3ltn0YOvGS7uthXvrF4xKc2Cc13tP8fvtv8M54PsTdjY+6A9QTSckaTC+HlqywKnZt3BBOH+Kgzm
 R4vvaya6MD2S4SHdbbCx7jq5GkIbkOyfZ+6gAvZWjAoFd0lF/e3I/ne3UW3C+j+2mqag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GW69tT/mY+GxW/dit/fEjy2/QtPjD8H5zhc4gWDGiKU=; b=lNCtvzvVe+02R76oi7Q/0LRUjj
 znWZDVeg+1HSRRty0g0iVUR4PnKpyzmNlzgOfiSzvfgrtefKedvYpZi5d1+6KovdGYi1cRdLvFq3x
 Fe4ad6m6yrgsJVyWEF2pPeF0VyqbF98pykE6K7GJURGDkKNU+Bz8ClTBJ54T4fM3zcok=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.4])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kHnb9-0097gN-S7
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 12:28:50 +0000
Received: from [100.112.128.234] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-a.us-west-2.aws.symcld.net id 35/CD-25315-FDE5F5F5;
 Mon, 14 Sep 2020 12:15:27 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1VSa0xTZxjm6+nlSCgcSwmfdYxZI27EFlqW0Y2
 ZKGRbjZlhbnNi0O4gR1rpbT1FK5uXTpGkRKTgJevGSlnLFlBrNlmF4QhdRyZBTIGQDJ2MUaZQ
 QB2zWzuE9fR42f58eZ73eZ/3eb/kRRHeJFuAEiYjYdDiaiE7nlllDbwiurVLoci+NbdG9rC+l
 yM7+oWbLeuwNQPZ+eM3gMxyshrIun4NANniHQ+ygSMfGt4s/ydSD+THfLMseXfjOY78u6Z5Ri
 FrB0ulLdGZ3mcph+73Ifrao8A0uXCacQRcMgMLWIbyMAeAjfN7aXwQ2quOMS0gPoqdAHaFxtg
 0+Q3AdvtnT0l4YAChLbMA+h2vUgLAXAis9/UzaNLLhDaPjUWTbwD0tk+xaL+dAcO/jwKajAHo
 6A/FhrExBbzQ44il8CmLtWc+ZkGwYQDnWqxsqisZ2wgXPh3jUJiP5UP3mdqoG41iKbz7YDNVZ
 mJr4KkrrYDGUrg04o8FcLFiWG/1sOjN8+HobH9s5DKsANpbhmM9AEuDDZ1mBoURLBUONjTHei
 CGQWfXdYTGKXBqYvHR304AGPy2hUULq+HdPxcf4TQ4aK8BNH4TDgWDTGpPiGVC/8MiulwO/zh
 3hVMHXrT9J84W7UKwF6C7M4sur4KnasY5ttgPlsOrnwSYTYDZCmQlBlWZ0qjBVWqRJDtbJJFI
 RZKcbJFUmivGK0W4uIIU7SdIo0gqxveTYvKAZre6VKwljF+D6JWV6j+euAw6Zu6JvWAFyhCmc
 It2KhS8xBJd6QElTioVhgo1QXrBMygqhFxLcVRbbiDKCNMelTp6q49liCYI+dwFSuaSelxDqs
 poqQ+8jNZNNTYjqK/RFX2t1eY2hMfU6rSEIJVbQGVhlEFZoX0y7vH1D4I0QTIXxMXF8RL0hEG
 jMv5fnwapKBAmc3nUlASV1vgkdTq6ECO60NvJO6mFjPhTSXCEIdjqyKgb1z1fFSjmf4X2+kOX
 VxfwLx2y3bzoDV1bb4L6/qnbE+UTvdevag7/neQpslS6s7adiXuQeDMQmUvp8ntf99jit8tnR
 sOuhkjx6RsfVQp6gtZ7RHtkZeHaZnDipZ9z9kV0uprwQNZPhZ7ujdXv9EUC4/fzkm4rg76OSO
 e1i/aQdvcvF7pdZa15z2WAlasiS1sDO15DJ7fl1Lb7zTOC/JOf+89ueI+15Y11Iz+4+5wZTdv
 XGxuItk1bvJN53neFdu1eYqTVl3k2PdGJmp0wApe8h2vXjoR//CCXn+4++Kw3/a075SuG96zL
 /XK67fulQ/m7Pjx+fl/S/Ka/UvJcQiapxCWZiIHE/wUEa+yxeAQAAA==
X-Env-Sender: hidehiro.kawai.ez@hitachi.com
X-Msg-Ref: server-8.tower-334.messagelabs.com!1600085724!171215!1
X-Originating-IP: [133.145.228.58]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27405 invoked from network); 14 Sep 2020 12:15:26 -0000
Received: from mail11.maildeliv.hitachi.co.jp (HELO mail11.hitachi.co.jp)
 (133.145.228.58)
 by server-8.tower-334.messagelabs.com with DHE-RSA-AES256-SHA encrypted SMTP;
 14 Sep 2020 12:15:26 -0000
Received: from mlsv7.hitachi.co.jp (unknown [133.145.228.43])
 by mail11.hitachi.co.jp (Postfix) with ESMTP id 4E331C002C;
 Mon, 14 Sep 2020 21:15:24 +0900 (JST)
Received: from mfgw04.hitachi.co.jp by mlsv7.hitachi.co.jp (8.14.4/8.14.4) id
 08ECFBOv016268; Mon, 14 Sep 2020 21:15:24 +0900
Received: from GUjpTK3DCemcs24.global.hitachi.net ([158.213.250.25])
 by mfgw04.hitachi.co.jp with ESMTP
 id HnOGk30ZKn1CIHnOGkg1fT; Mon, 14 Sep 2020 21:15:24 +0900
Received: from GUjpTKHDCemcs01.global.hitachi.net (2002:9ed5:d24a::9ed5:d24a)
 by GUjpTK3DCemcs24.global.hitachi.net (2002:9ed5:fa19::9ed5:fa19)
 with
 Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 14 Sep 2020 21:15:23 +0900
Received: from GUjpTKHDCemcs04.global.hitachi.net (2002:9ed5:d24d::9ed5:d24d)
 by GUjpTKHDCemcs01.global.hitachi.net (2002:9ed5:d24a::9ed5:d24a)
 with
 Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 14 Sep 2020 21:15:23 +0900
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (74.107.156.4) by
 GUjpTKHDCemcs04.global.hitachi.net (158.213.210.77) with Microsoft
 SMTP
 Server (TLS) id 15.0.1497.2 via Frontend Transport; Mon, 14 Sep 2020 21:15:23
 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PikalgXHsYf+z/dbewVPGwOnGfHauKbVu/UXb2N8kygVKbMY02+i615HrAnXcoj/wrhoNnm2Vkl8LqX/ABsLbiDgnouXnrPTKQy6l7EKbyxMYx5lEWyPCMysrmg2ghQ0KI4bwATSSl4YQj8jiRYzEX+mjZ+F3fXGsvQNPzBJrzsf5NcZr29MHuJOM2HyISoEDrFrfW5ZZRTcFe/zaNdoP8Itw/xBv/DJYu37Q6EYJQWQvMxlVC7siLZcpv4PvTutpxkyoHugGYqWtnwavKGOhU+bwQIFnHOSVEeLULT8s36efBTrxtt3G1YTypIPpPl7ZHq2M/Y72zPynBQ5DqewmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GW69tT/mY+GxW/dit/fEjy2/QtPjD8H5zhc4gWDGiKU=;
 b=mHAVaOdIj9S4iSRv8s1hfdyiXwFIa1JTBF1tNpE43m1Gj28f/0MOY5GJxdTHfS1TWZGI5KQfoWzQA7s1j61AYTQ06vQTKC3RH8qcPgRvoiL/FIIZDF8hyqRApgo/NRY6yAmZThMRu8COrXn+jpdLHPTNtTQnF179pwy0xDiE8hspczUKMwcHEVdAmlzbI6EjB6juWO8eF4oqPpc0sSCN7grRej5ccFy37QOQWYrAythobnp9QbOnc4SaMW0/1ycuqVaIrmwgS+953a1Pv7PqebVVaR9kTYmLj7sNAbsAhIoRrR58HM5GAyCBzWLVvctE9bvdiB9qzu2FqFOy+P7sjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hitachi.com; dmarc=pass action=none header.from=hitachi.com;
 dkim=pass header.d=hitachi.com; arc=none
Received: from TYAPR01MB2429.jpnprd01.prod.outlook.com (2603:1096:404:88::15)
 by TYAPR01MB2992.jpnprd01.prod.outlook.com (2603:1096:404:8a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Mon, 14 Sep
 2020 12:15:21 +0000
Received: from TYAPR01MB2429.jpnprd01.prod.outlook.com
 ([fe80::3007:3e93:5f81:51de]) by TYAPR01MB2429.jpnprd01.prod.outlook.com
 ([fe80::3007:3e93:5f81:51de%4]) with mapi id 15.20.3370.018; Mon, 14 Sep 2020
 12:15:21 +0000
From: =?utf-8?B?5rKz5ZCI6Iux5a6PIC8gS0FXQUnvvIxISURFSElSTw==?=
 <hidehiro.kawai.ez@hitachi.com>
To: "'Wu Bo'" <wubo40@huawei.com>, "minyard@acm.org" <minyard@acm.org>,
 "arnd@arndb.de" <arnd@arndb.de>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Thread-Topic: [PATCH] ipmi: Fix out-of-bounds in write_next_byte()
Thread-Index: AQHWinVy5u3ttM0RDkencjfHn8hH+6loCQXA
Date: Mon, 14 Sep 2020 12:13:14 +0000
Deferred-Delivery: Mon, 14 Sep 2020 12:15:00 +0000
Message-ID: <TYAPR01MB2429AAE58FF9FF020F657509B5230@TYAPR01MB2429.jpnprd01.prod.outlook.com>
References: <1600074602-622893-1-git-send-email-wubo40@huawei.com>
In-Reply-To: <1600074602-622893-1-git-send-email-wubo40@huawei.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [202.246.252.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43533fab-1c85-4e1a-b1e4-08d858a7da24
x-ms-traffictypediagnostic: TYAPR01MB2992:
x-microsoft-antispam-prvs: <TYAPR01MB2992BA5861346FAD4D77D1A9B5230@TYAPR01MB2992.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vEMIa7di+G71jvp/Fk6GaT1KmDQqfihWcWhC12ZqVg/XFfZ0XbCtpzTf75bqCsxdtJzj07XY48IJtyZCMW2B4AhmJ4oIcHJXekG3L3NyPYGicjdvo+62stec8ztsCXVqDboJbetT5aJS7tRo7bf8sp/YNOXyFMg3cyM+1D0ZvXrQoMHkF9jB2rP+rFTITLYM003TD6KJ5zEZFpo8m1QiayEWR7PgnHpQI2cX8o9f5gqScv0TY0LOEWZrw3Xwc/epjJJPV8kPmnC+L2ff2L8YUOJBCT/zF3sz0mJ+twqOcZgVNJIRhaIUmfEa0PKNAPukcydqlua1aD72okjizB3WYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYAPR01MB2429.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(33656002)(8676002)(2906002)(8936002)(85182001)(71200400001)(9686003)(55016002)(86362001)(7696005)(66946007)(45080400002)(66556008)(64756008)(76116006)(66476007)(4326008)(52536014)(6506007)(66446008)(186003)(26005)(30864003)(83380400001)(5660300002)(316002)(6666004)(54906003)(110136005)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: TyQOTwYstfoCT0teyOViw66SomPZajAPjtDR9FXNlA5xhSyPD3OQcKFu0Xty0v92Oj0ljjfun9C50VjntxjE/kg9ctb8bb0So554Bo5C8/cy0WgD2slIfXi/tSJROvhMlkr7H+w+OFRGGjHgcviZvs+LwQzebF0GZr/WrDN1DWrSbP/+RkUOfQ9P4HbnzJ+CjZnt7dJ97WtQZs6oyLVnT6pHrmRvCya8dXiAISZkCw7CpW5O3DoPq8AZXOcKCRm+K3rqy+fPSZCNE5mlf0BWMprsgaswpZQZFj2YX/aaj/05SInYwcTBt8EWJcYdpnoKrNO1Ta7j5oxIG8nElrcdoTPY/KJLqwS5w86+GVT6igEwUvVYnZPWNhnyKpg3BHZKpFMGRMF0J/gkirId1mBA7r8vihYKZ0KYI2fNtWsxF/tTYAnXwK9LfXGxaH32ceRD8LBgUYdLiXHfUQaFyt89TD1tvBh8MnIAzsXBMuMWFKkfjT2J1s39Yb9JXEeGLbpX9nDVgyPb6bj+DfzMvqrP62T+tXF29Ud61f4w12cgcYGFmCWsf1tg4sdS9he+Vt8N/dhd609O2KNWVGNx/kU2JagplyVr5O4cYWDqAU97PH1tqVeD0z8KQPsfI6hWcPS1MX8hFruRIvecUatIw2CTFQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYAPR01MB2429.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43533fab-1c85-4e1a-b1e4-08d858a7da24
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2020 12:15:21.4386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f54277c9-dafe-44aa-85a4-73d5c7c52450
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tyXFv4qA51z5jztL+D2jNRAuVIIaza0FqtZ05ClQCl4NkC4s3IX/CUCHjnlUUNIUePEiJyMwRyLBg/2yPCZ0S5rdTOmJ2E7PlTaoknxh0BM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2992
X-OriginatorOrg: hitachi.com
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.250.4 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.4 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kHnb9-0097gN-S7
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix out-of-bounds in
 write_next_byte()
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
Cc: "linfeilong@huawei.com" <linfeilong@huawei.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "liuzhiqiang26@huawei.com" <liuzhiqiang26@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi, Wu

> From: Wu Bo <wubo40@huawei.com>
> In the virtual machine, Use mce_inject to inject errors into the system.
> After mce-inject injects an uncorrectable error, there is a probability
> that the virtual machine is not reset immediately,
> but hangs for more than
> 3000 seconds. And the write_data array is accessed out of bounds.
> 
> The real reason is that smi_event_handler lack of lock protection in the
> multi-threaded scenario, which causes write_pos
> to exceed the size of the write_data array.

Thank you for the fix, but I wonder why this multi-threaded scenario happens.
If my understanding is correct, only one CPU can run panic routines, and
this means only one CPU calls flush_messages.  Did I miss some call path?

Best regards,

Hidehiro Kawai
Hitachi, Ltd. Research & Development Group

> 
> Call Trace:
> nmi_handle
>    -> mce_raise_notify
>        -> panic_event
> 	   -> ipmi_panic_request_and_wait
> 		-> flush_messages
> 		    -> smi_event_handler
> 
> Test steps:
> 1. # vim /tmp/uncorrected
> CPU 1 BANK 4
> STATUS uncorrected 0xc0
> MCGSTATUS  EIPV MCIP
> ADDR 0x1234
> RIP 0xdeadbabe
> RAISINGCPU 0
> MCGCAP SER CMCI TES 0x6
> 
> 2. # modprobe mce_inject
> 3. # cd /tmp
> 4. # mce-inject uncorrected
> 
> The log as follows:
> [   29.826892] core: [Hardware Error]: CPU 1: Machine Check Exception: 6 Bank 4: b4000000000000c0
> [   29.826893] core: [Hardware Error]: RIP 00:<00000000deadbabe>
> [   29.826894] core: [Hardware Error]: TSC c5b604e3d3a ADDR 1234
> [   29.826896] core: [Hardware Error]: PROCESSOR 0:50654 TIME 1598001986 SOCKET 0 APIC 1 microcode 1
> [   29.826896] core: [Hardware Error]: Run the above through 'mcelog --ascii'
> [   29.826898] core: [Hardware Error]: Machine check: In kernel and no restart IP
> [   29.826899] Kernel panic - not syncing: Fatal machine check
> [   29.826899] kernel fault(0x5) notification starting on CPU 2
> [   29.826904] kernel fault(0x5) notification finished on CPU 2
> [   29.889538] ------------[ cut here ]------------
> [   29.889547] do_IRQ(): swapper/0 has overflown the kernel stack (cur:ffffffffb5400000,sp:fffffe0000007c48,
>                irq stk top-bottom:ffff98067ac00080-ffff98067ac04000, exception stk
> top-bottom:fffffe0000009080-fffffe000000b000,ip:delay_tsc+0x34/0x50)
> [   29.889569] WARNING: CPU: 0 PID: 0 at arch/x86/kernel/irq_64.c:73 handle_irq+0x102/0x110
> [   29.889569] Modules linked in: mce_inject core_module_frame(OE) kbox(O) sysmonitor(O) kboxdriver(O) sunrpc nfit
> [   29.889604] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> rel-1.10.2-0-g5f4c7b1-20181220_000000-szxrtosci10000 04/01/2014
> [   29.889607] RIP: 0010:handle_irq+0x102/0x110
> [   29.889608] Code: 00 00 50 65 4c 8b 14 25 80 5c 01 00 57 49 81 c2 e0 0a 00 00 48 c7 c7 f8 53 26 b5 4c 89 d6 c6 05 4e
> 08 3a 01 01
> [   29.889609] RSP: 0018:ffff98067ac03fa0 EFLAGS: 00010086
> [   29.889611] RAX: 0000000000000000 RBX: ffff980675568800 RCX: 0000000000000006
> [   29.889611] RDX: 0000000000000007 RSI: 0000000000000000 RDI: ffff98067ac16a00
> [   29.889612] RBP: 0000000000000027 R08: 0000000c83bdf5cc R09: 00000000000002cf
> [   29.889613] R10: ffffffffb5413260 R11: 0000000000000002 R12: fffffe0000007b98
> [   29.889614] R13: 0000000000000027 R14: 0000000000000000 R15: 0000000000000000
> [   29.889615] FS:  0000000000000000(0000) GS:ffff98067ac00000(0000) knlGS:0000000000000000
> [   29.889616] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   29.889617] CR2: 00007fd391992fb8 CR3: 00000000a0a0a005 CR4: 00000000003606f0
> [   29.889624] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   29.889624] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   29.889625] Call Trace:
> [   29.889629]  <IRQ>
> [   29.889633]  ? delay_tsc+0x34/0x50
> [   29.889638]  do_IRQ+0x49/0xe0
> [   29.889641]  common_interrupt+0xf/0xf
> [   29.889642]  </IRQ>
> [   29.889642]  <NMI>
> [   29.889644] RIP: 0010:delay_tsc+0x34/0x50
> [   29.889646] Code: 5a 4b 0f ae e8 0f 31 48 c1 e2 20 48 89 d1 48 09 c1 0f ae e8 0f 31 48 c1 e2 20 48 09 d0 48 89 c2 48
> 29 ca 48 39 fa 73 15 f3 90 <65>
> [   29.889647] RSP: 0018:fffffe0000007c48 EFLAGS: 00000287 ORIG_RAX: ffffffffffffffd8
> [   29.889648] RAX: 00000c5b6825d6ec RBX: 00000000004b6c49 RCX: 00000c5b6825cf64
> [   29.889649] RDX: 0000000000000788 RSI: 0000000000000000 RDI: 0000000000000835
> [   29.889649] RBP: fffffe0000007cc0 R08: 0000000000000004 R09: fffffe0000007c5c
> [   29.889650] R10: ffffffffb5605ae0 R11: 0000000000000000 R12: fffffe0000007cb0
> [   29.889651] R13: 0000000000000001 R14: fffffe0000007ef8 R15: ffffffffb526a280
> [   29.889654]  ? __ndelay+0x40/0x40
> [   29.889657]  wait_for_panic+0x1c/0x60
> [   29.889662]  mce_timed_out+0x6d/0x90
> [   29.889665]  do_machine_check+0x8d4/0xdb0
> [   29.889673]  ? native_safe_halt+0xe/0x10
> [   29.889679]  raise_exception+0x47/0xb0 [mce_inject]
> [   29.889684]  ? __intel_pmu_enable_all+0x47/0x80
> [   29.889689]  ? native_apic_msr_write+0x27/0x30
> [   29.889691]  ? intel_pmu_handle_irq+0x10d/0x160
> [   29.889692]  mce_raise_notify+0x62/0x70 [mce_inject]
> [   29.889694]  ? raise_local+0xc0/0xc0 [mce_inject]
> [   29.889696]  nmi_handle+0x63/0x110
> [   29.889699]  default_do_nmi+0x4e/0x100
> [   29.889702]  do_nmi+0x12c/0x190
> [   29.889704]  end_repeat_nmi+0x16/0x6a
> [   29.889707] RIP: 0010:native_safe_halt+0xe/0x10
> [   29.889708] Code: eb bd 90 90 90 90 90 90 90 90 90 90 e9 07 00 00 00 0f 00 2d 46 6b 59 00 f4 c3 66 90
> [   29.889709] RSP: 0018:ffffffffb5403e90 EFLAGS: 00000246
> [   29.889710] RAX: ffffffffb4a71f30 RBX: 0000000000000000 RCX: 0000000000000000
> [   29.889711] RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000000
> [   29.889712] RBP: 0000000000000000 R08: 0000000c7fd07643 R09: 0000000000000001
> [   29.889712] R10: 0000000000000401 R11: 00000000000003f4 R12: 0000000000000000
> [   29.889715] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> [   29.889719]  ? __cpuidle_text_start+0x8/0x8
> [   29.889721]  ? first_nmi+0x1e/0x1e
> [   29.889723]  ? delay_tsc+0x3b/0x50
> [   29.889724]  </NMI>
> [   29.889724] WARNING: stack recursion on stack type 6
> [   29.889725] ---[ end trace e03eaf0134c6fcd6 ]---
> [ 3086.488900] BUG: unable to handle kernel paging request at ffff980680000001 [ 3086.488902] PGD a1801067 P4D a1801067
> PUD 0 [ 3086.488916] Oops: 0000 [#1] SMP PTI
> [ 3086.488919] CPU: 2 PID: 0 Comm: swapper/2 Kdump: loaded Tainted: G   M    W  OE
> [ 3086.488920] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> rel-1.10.2-0-g5f4c7b1-20181220_000000-szxrtosci10000 04/01/2014 [ 3086.488927] RIP: 0010:kcs_event+0x3c2/0x890 [ipmi_si]
> [ 3086.488928] Code: 74 0e 48 8b 7b 08 31 f6 48 8b 07 e8 68 0f 9b f4 83 bb 24 01 00 00 01 48 8b 7b 08 [ 3086.488930] RSP:
> 0018:fffffe000005d658 EFLAGS: 00010046 [ 3086.488931] RAX: 0000000009a24ff1 RBX: ffff9806765db000 RCX: 0000000000000000
> [ 3086.488931] RDX: 0000000000000ca2 RSI: 0000000000000000 RDI: ffff98067551fc40 [ 3086.488932] RBP: 0000000000000001
> R08: 0000000000000000 R09: ffffffff00080204 [ 3086.488933] R10: fffffe000005dae8 R11: fffffe000005db00 R12:
> 0000000000000000 [ 3086.488933] R13: fffffe000005db28 R14: ffff980674870000 R15: 0000000000000000 [ 3086.488934] FS:
> 0000000000000000(0000) GS:ffff98067ad00000(0000) knlGS:0000000000000000 [ 3086.488935] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [ 3086.488936] CR2: ffff980680000001 CR3: 00000000a0a0a006 CR4: 00000000003606e0 [ 3086.488942] DR0:
> 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [ 3086.488942] DR3: 0000000000000000 DR6: 00000000fffe0ff0
> DR7: 0000000000000400 [ 3086.488943] Call Trace:
> [ 3086.488946]  <NMI>
> [ 3086.488950]  smi_event_handler+0x4f/0x690 [ipmi_si] [ 3086.488952]  flush_messages+0x10/0x40 [ipmi_si] [ 3086.488957]
> ipmi_panic_request_and_wait+0xf5/0x100 [ipmi_msghandler] [ 3086.488960]  ? dummy_smi_done_handler+0x10/0x10
> [ipmi_msghandler] [ 3086.488967]  ? kvm_sched_clock_read+0xd/0x20 [ 3086.488970]  ? sched_clock+0x5/0x10
> [ 3086.488975]  ? sched_clock_cpu+0xc/0xa0 [ 3086.488980]  ? log_store+0x278/0x2c0 [ 3086.488982]  ?
> ipmi_si_platform_shutdown+0x20/0x20 [ipmi_si] [ 3086.488984]  ? kcs_event+0x20/0x890 [ipmi_si] [ 3086.488986]  ?
> ipmi_addr_length+0x40/0x40 [ipmi_msghandler] [ 3086.488988]  ? panic_event+0x1d4/0x3e0 [ipmi_msghandler] [ 3086.488990]
> panic_event+0x1d4/0x3e0 [ipmi_msghandler] [ 3086.488993]  ? vprintk_deferred+0x3a/0x40 [ 3086.488994]  ?
> printk+0x52/0x6e [ 3086.488998]  ? cpumask_next+0x17/0x20 [ 3086.489000]  notifier_call_chain+0x47/0x70 [ 3086.489004]
> panic+0x17d/0x2c2 [ 3086.489007]  mce_panic+0x216/0x240 [ 3086.489009]  do_machine_check+0xccd/0xdb0 [ 3086.489012]  ?
> native_safe_halt+0xe/0x10 [ 3086.489018]  raise_exception+0x47/0xb0 [mce_inject] [ 3086.489021]  ?
> __intel_pmu_enable_all+0x47/0x80 [ 3086.489024]  ? native_apic_msr_write+0x27/0x30 [ 3086.489025]  ?
> intel_pmu_handle_irq+0x10d/0x160 [ 3086.489027]  mce_raise_notify+0x62/0x70 [mce_inject] [ 3086.489029]  ?
> raise_local+0xc0/0xc0 [mce_inject] [ 3086.489032]  nmi_handle+0x63/0x110 [ 3086.489035]  default_do_nmi+0x4e/0x100
> [ 3086.489037]  do_nmi+0x12c/0x190 [ 3086.489038]  end_repeat_nmi+0x16/0x6a [ 3086.489041] RIP:
> 0010:native_safe_halt+0xe/0x10 [ 3086.489042] Code: eb bd 90 90 90 90 90 90 90 90 90 90 e9 07 00 00 00 0f 00 2d 46 6b
> [ 3086.489043] RSP: 0018:ffffb545c069beb0 EFLAGS: 00000246 [ 3086.489044] RAX: ffffffffb4a71f30 RBX: 0000000000000002
> RCX: 0000000000000000 [ 3086.489044] RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000000 [ 3086.489045]
> RBP: 0000000000000002 R08: 0000000c7fa43cae R09: 0000000000000027 [ 3086.489045] R10: ffffb545c067bce0 R11:
> 00000000000001ba R12: 0000000000000000 [ 3086.489046] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> [ 3086.489048]  ? __cpuidle_text_start+0x8/0x8 [ 3086.489051]  ? native_safe_halt+0xe/0x10 [ 3086.489052]  ?
> native_safe_halt+0xe/0x10 [ 3086.489053]  </NMI> [ 3086.489054]  default_idle+0x1a/0xd0 [ 3086.489056]
> do_idle+0x1aa/0x250 [ 3086.489057]  cpu_startup_entry+0x6f/0x80 [ 3086.489060]  start_secondary+0x1a7/0x200
> [ 3086.489064]  secondary_startup_64+0xb7/0xc0 [ 3086.489066] Modules linked in: mce_inject core_module_frame(OE) kbox(O)
> sysmonitor(O) [ 3086.489089] kernel fault(0x1) notification starting on CPU 2 [ 3086.489094] kernel fault(0x1) notification
> finished on CPU 2
> 
> crash> struct si_sm_data 0xffff8b06f08bec00
> struct si_sm_data {
>   state = KCS_WAIT_WRITE,
>   io = 0xffff8b06f0bd5e40,
>   write_data = "\020\002A\003 Fo\241at\....
>   write_pos = 18331179,    <----
>   write_count = -18331372,
>   orig_write_count = 10,
>   read_data = "\034B\000\000\001\...
>   read_pos = 0,
>   truncated = 0,
>   error_retries = 1,
>   ibf_timeout = 5000000,
>   obf_timeout = 5000000,
>   error0_timeout = 4294734898
> }
> 
> Fixes: 82802f968bd31 ("ipmi: Don't flush messages in sender() in run-to-completion mode")
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 77b8d551ae7f..961e7b0b11fe 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -882,15 +882,18 @@ static void flush_messages(void *send_info)  {
>  	struct smi_info *smi_info = send_info;
>  	enum si_sm_result result;
> +	unsigned long flags = 0;
> +	int time = 0;
> 
> -	/*
> -	 * Currently, this function is called only in run-to-completion
> -	 * mode.  This means we are single-threaded, no need for locks.
> -	 */
> -	result = smi_event_handler(smi_info, 0);
> -	while (result != SI_SM_IDLE) {
> +restart:
> +	spin_lock_irqsave(&smi_info->si_lock, flags);
> +	result = smi_event_handler(smi_info, time);
> +	spin_unlock_irqrestore(&smi_info->si_lock, flags);
> +
> +	if (result != SI_SM_IDLE) {
>  		udelay(SI_SHORT_TIMEOUT_USEC);
> -		result = smi_event_handler(smi_info, SI_SHORT_TIMEOUT_USEC);
> +		time = SI_SHORT_TIMEOUT_USEC;
> +		goto restart;
>  	}
>  }
> 
> --
> 2.23.0

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
