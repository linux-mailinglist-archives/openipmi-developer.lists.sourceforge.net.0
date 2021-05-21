Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B2638C23C
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 10:47:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lk0oM-0003Vd-Ql; Fri, 21 May 2021 08:47:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=6775408355=zweiss@equinix.com>)
 id 1lk0oK-0003VS-BU
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 08:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wLiRGe6/vldUgGnTIHTuByCHoCzL64tZNs+18tmNsXI=; b=nPRlhhBQjdkEgXh9p029S8xGPC
 N2J5jvwzUsWHOY4LUZuL9nco5hfonFU+nj/BkkGabxPVMz+5dbEAVz1nMMnB61L7c8a1MwcGLjTgr
 jllKLKV0fK091zKNpFxLx1yYHvNAdBYkdekKRlIo3M/ejoerpZ1SRPg0CI+prDL+smXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wLiRGe6/vldUgGnTIHTuByCHoCzL64tZNs+18tmNsXI=; b=P84KrbnzcVgC2nCK/MC9gqaQ8M
 2aOoYVAgSI/82cYtctdqoxbEKioKsHOWsKmuTr/8sNF7OTHeKdSDIFenfzOB63prbdJK0XAvh9bfA
 PBpRnHBAdXs+yyqF6kcx8VxLsRTSyjnYeXnBswKI/TtDu30QEH/VqGiC+Xuh5yGtsYII=;
Received: from mx0a-00268f01.pphosted.com ([148.163.148.236])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lk0oE-0000XY-6W
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 08:47:13 +0000
Received: from pps.filterd (m0165118.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14L7IJSt031552; Fri, 21 May 2021 07:19:30 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
 by mx0a-00268f01.pphosted.com with ESMTP id 38p7csg4b9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 May 2021 07:19:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIO9nUEUKf2XHsXIx2/E5ACtpGiQEymxvb4nLd2fwzMJwsXKwRDtxSTzqJLjnGUZMY+ZXhp3NkbPkr4b4ezxx1hJlfslzilR+w7FNCvXBdCFysCHnFwJVQ2Up83TAVP3mEV6fUy6HqTfqePXpdEG5UwdIFyJul7spdsMOwQkAjJoE2K7v9d4DXZJatL1UnJp3KMfDN5SSgV3lpsUtCRCIoVIHLC94v1uKMHxfI5lhA3Ojzni2c5QuKL6/U1OIecgp+cSKd8fJZkeDAlK3gTpwEZDDv65QSksnJal2gjEqNGjhF/Th2rKIXJMKjigTA6DTuLBI832lARI5+xLV6n27Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLiRGe6/vldUgGnTIHTuByCHoCzL64tZNs+18tmNsXI=;
 b=J337nxYrGlJRjgaccOsPsSg7J0PJFMWKc+cy9Im6lvbUNdzrqwaZhF6eMCAy4yBrvriFzfAAgT2Do3OiZKs9ompxhduFX8v/FupP261M7OX1O0/iIT3f3HQN49TWSPdXsty45oL7OOEjrNmpnffdtRiydOODUrjTQVk3qJxeAVTZMp9TYYRJLwNHqAlNbk26IJuHo1JP2dtGI5SG9EvPhq1B2tcLxbBKMfmAUJ6t+1aIloFqZiI5jpTPB3JDaQoc+jRwVT/EEqVoOG9oCSI4JXmM0OIgHM7yqPRbDb/tWPJRpIShMELdm6wLpDFchgHBKHjEE+BZxE8aYlPSSI7Zgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLiRGe6/vldUgGnTIHTuByCHoCzL64tZNs+18tmNsXI=;
 b=lD61is+Fvq7SY3R2NBMxFil+MWDCp0n0sxR5LA1PoFh474pz8QYEzZ/SP8xZNjoE/9hMo3LimYS0nRk9JkajOxpjHvm+KcCsUhG9l8qKh6h7lSKx0wIiMWvCl6easSZQpsA5yh+43O9c99REeZT3CqRpFYfoDqlNfY+0z7f4JNI=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB3802.namprd04.prod.outlook.com (2603:10b6:5:ac::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.28; Fri, 21 May 2021 07:19:28 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 07:19:28 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: [PATCH v3 09/16] ipmi: kcs_bmc: Allow clients to control KCS IRQ
 state
Thread-Index: AQHXThGi6/xLz8Jl0kC6F9fU02ObCw==
Date: Fri, 21 May 2021 07:19:28 +0000
Message-ID: <YKde/xgbPrECs570@packtop>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-10-andrew@aj.id.au>
In-Reply-To: <20210510054213.1610760-10-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb2c3fd2-08bb-40d3-ddb1-08d91c28c534
x-ms-traffictypediagnostic: DM6PR04MB3802:
x-microsoft-antispam-prvs: <DM6PR04MB38020D412B6889D124A4A46CC3299@DM6PR04MB3802.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:249;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: //K7y0F+L1nHR9MNuG20xc+HXHQwb7O7fz8PJdk38LN8ZpIxQnYkh8iG1k/hEhVa0hEtbKDeNxnzGaH0VCmI/4IkDM6/DE/27LnZnHh2CP6N2XQ+N05xbxB3zrh1ZET3eKjxyJtq8J2gHUqAIJsE+FqXAVOGQ1rqLIe7ABSoVbr/kOV6hJQSJHdcoKRQ2qqOQ0TYmTzvyNvn7zDpDw8KTugq4eXW51EVo++7viXltIxmHU460+eVtPklOKDIofQqtYh6gCqLg5QaCHp2r20l2M7eZPzBxJ6cpwQUX5+gQSTLxJQR2emifNFlolKEIQA+MPCrS+q2Rd8expU3o3RsirXMiMngnhU77tiYZKGCCHvPeQWai4AOYsd6qh/OL+AmerJi+D6QYyyHcwr9iSvmcQiH0t3FbPagj3cNqmukDCrHxwxaBayr0AHBy3evpw2QG0FLJFNIX4RYBZ7uuDN2oV15S424tfYVRsSCcklx5yhHufZ4vfkficEpnL9cZ7pYaqQ4c6gSbh0h+9CTxWMkU6U/gNGEDaCqV2JHkAkqu1sWYTubQREeJQD0KtERyhLiMGwm52QWr7UISAFdV/lYvdcnah+JCojihbyX2AAV+QQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(346002)(39860400002)(376002)(396003)(366004)(136003)(122000001)(5660300002)(7416002)(478600001)(33716001)(38100700002)(71200400001)(26005)(54906003)(66476007)(66446008)(76116006)(66946007)(8676002)(4326008)(8936002)(6916009)(9686003)(30864003)(6486002)(2906002)(64756008)(83380400001)(6512007)(186003)(6506007)(86362001)(66556008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?2weGm5dN61/ePCwrRoxTCsc43ljAsMTi+nsEgkWynnzLfNRih4VaVyv+pp57?=
 =?us-ascii?Q?aBhnMC54Ee4HH2TNekgS/MI7mwaHJf67UTzw/vTIdmwYWMlKS9lwJ4t/PuTz?=
 =?us-ascii?Q?TUZPrKuxqRGEIR2fjTCU5JFnOJJHMBfgp0p8RzQh+yMgj436CnqxJIPhxSHd?=
 =?us-ascii?Q?fcNRQmbk/e2PAKq06kZiKQ4QWirkuPMektRbpyWpFPIZn2pSkLRZxirKdkgH?=
 =?us-ascii?Q?VVlHtl15/SYDkxA2zGIP926nPpAFEYJNptMUQ5R+/e6aABhGj/OARqOZ0bWr?=
 =?us-ascii?Q?A9FFZexf3y2seBz4TFD/kggNS9oOYCY47lixr2qqiq1NlMBSddVCf7ce109u?=
 =?us-ascii?Q?xKj7Hp3p5SbMhkD5LFI6O8NcwLcz/7SoY6nHseozI0M7ecQknR+u61G/wWyo?=
 =?us-ascii?Q?zAOQxcO7vTcyVmTQhxa/ZoZHx3z3fsRvIDJrxzMmVu6nRJ0EeV9DVIPj5Rj8?=
 =?us-ascii?Q?i3o3dRxrkmaLkl2G0SMRrumqKtxx4ql33PWvHH5+VPrYZpg9irR0HQNWa14N?=
 =?us-ascii?Q?xwHc+0lffTxTa3aVyMEn3VQe8wEhrCl6a9Y23P6IvdvrTi6fRNVwg9i4XL+j?=
 =?us-ascii?Q?kUbeOc+eionWF4FYEnrr1XPpXJbkIsxhHmTNHzkzPrLgsMauIxgYS5ZP/v35?=
 =?us-ascii?Q?Ost/HeZDI+J6XhMIb+/stD8cJJ8U/1m2qxN/b7P0Nt+9SsEFc+nUHveKGUEJ?=
 =?us-ascii?Q?kL3fOG9PXFo5hqWPEHO7gpaNHrSh88qBj+LTIj1IXcFVClT6gctgSKwBzj4w?=
 =?us-ascii?Q?arb9oZmRMdguNXLw+mfyVfNr8R26xAd3xvt3rwMHiefhKWNCxlak7aSU0jXN?=
 =?us-ascii?Q?G8w25ZfIHbdFd+tzdIncpXHOwcINaP6L2udidoBjH9roLVpila7aVNTOnjHR?=
 =?us-ascii?Q?kJV44HMZE3ZX5Uke5KYbAd5zCNg7OOJ3cTmjqimuXaqbed6WuCwdBY7nF0sM?=
 =?us-ascii?Q?Zbh5VNn9e7HHV4BYj0DbqnDSUaPb2AgpnkoSYrDZNMb/6LMSv92mIAyK5Kkb?=
 =?us-ascii?Q?seTA0lMEkNA83pSXe9LDQWTRAppsb68cmM7S6v667UMtwrKQcP+w5PoyPCoh?=
 =?us-ascii?Q?aV6QHcBo6MXpxUJBxj4GRdz8A8gf5QGaXDrlz8ST6KFJI5nsIIn7icZP0Apu?=
 =?us-ascii?Q?fgh5jCqUeZS9cRod4BRdVtQVWnE17IP6csk2nhUsKyOYJTmSe7vMXCvF/tJg?=
 =?us-ascii?Q?/E5Su9k+OfI+F3NHqKX6YddMJqodO3SilrLc0phCBUyYxoS4CfNNqxnht792?=
 =?us-ascii?Q?NtMi1bhMvvwTdMaN9gNhrXAjwsybmdyCmIxL+A6eP+ocLtSANXTOei+2kj1z?=
 =?us-ascii?Q?4/pNJ+g0iky28Kq6aYBhctYUoerDrKOd667gluGddjZxTg=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <E8A0714FE0653A4A837FBB9BBA8B7DA5@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb2c3fd2-08bb-40d3-ddb1-08d91c28c534
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 07:19:28.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhZTW0uxpu0y+341kOWKYa/PBa+Ghy19X8041GHBG+FfkvRH42XAi5JEFn6PBBMPibWD5aOAg825EuLkXc7/vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3802
X-Proofpoint-ORIG-GUID: MdE8jzZ2Zyo5_14u5vrDWS0gURW2Syhg
X-Proofpoint-GUID: MdE8jzZ2Zyo5_14u5vrDWS0gURW2Syhg
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-05-21_03:2021-05-20,
 2021-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 impostorscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105210046
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.148.236 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lk0oE-0000XY-6W
Subject: Re: [Openipmi-developer] [PATCH v3 09/16] ipmi: kcs_bmc: Allow
 clients to control KCS IRQ state
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "avifishman70@gmail.com" <avifishman70@gmail.com>,
 "venture@google.com" <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tali.perry1@gmail.com" <tali.perry1@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "benjaminfair@google.com" <benjaminfair@google.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "chiawei_wang@aspeedtech.com" <chiawei_wang@aspeedtech.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "tmaimon77@gmail.com" <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 10, 2021 at 12:42:06AM CDT, Andrew Jeffery wrote:
>Add a mechanism for controlling whether the client associated with a
>KCS device will receive Input Buffer Full (IBF) and Output Buffer Empty
>(OBE) events. This enables an abstract implementation of poll() for KCS
>devices.
>
>A wart in the implementation is that the ASPEED KCS devices don't
>support an OBE interrupt for the BMC. Instead we pretend it has one by
>polling the status register waiting for the Output Buffer Full (OBF) bit
>to clear, and generating an event when OBE is observed.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>---
> drivers/char/ipmi/kcs_bmc.c         |   6 ++
> drivers/char/ipmi/kcs_bmc.h         |   3 +
> drivers/char/ipmi/kcs_bmc_aspeed.c  | 150 ++++++++++++++++++----------
> drivers/char/ipmi/kcs_bmc_client.h  |   2 +
> drivers/char/ipmi/kcs_bmc_device.h  |   1 +
> drivers/char/ipmi/kcs_bmc_npcm7xx.c |  25 ++++-
> 6 files changed, 130 insertions(+), 57 deletions(-)
>
>diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
>index 2ec8312ce766..7081541bb6ce 100644
>--- a/drivers/char/ipmi/kcs_bmc.c
>+++ b/drivers/char/ipmi/kcs_bmc.c
>@@ -176,6 +176,12 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
> }
> EXPORT_SYMBOL(kcs_bmc_unregister_driver);
>
>+void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events)
>+{
>+	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
>+}
>+EXPORT_SYMBOL(kcs_bmc_update_event_mask);
>+
> MODULE_LICENSE("GPL v2");
> MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
> MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
>diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
>index 3f0cce315b4f..fa408b802c79 100644
>--- a/drivers/char/ipmi/kcs_bmc.h
>+++ b/drivers/char/ipmi/kcs_bmc.h
>@@ -8,6 +8,9 @@
>
> #include <linux/list.h>
>
>+#define KCS_BMC_EVENT_TYPE_OBE	BIT(0)
>+#define KCS_BMC_EVENT_TYPE_IBF	BIT(1)
>+
> #define KCS_BMC_STR_OBF		BIT(0)
> #define KCS_BMC_STR_IBF		BIT(1)
> #define KCS_BMC_STR_CMD_DAT	BIT(3)
>diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
>index 8e00675d1019..8b223e58d900 100644
>--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
>+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
>@@ -60,10 +60,18 @@
> #define LPC_ODR4             0x118
> #define LPC_STR4             0x11C
>
>+#define OBE_POLL_PERIOD	     (HZ / 2)
>+
> struct aspeed_kcs_bmc {
> 	struct kcs_bmc_device kcs_bmc;
>
> 	struct regmap *map;
>+
>+	struct {
>+		spinlock_t lock;
>+		bool remove;
>+		struct timer_list timer;
>+	} obe;
> };
>
> struct aspeed_kcs_of_ops {
>@@ -159,68 +167,89 @@ static void aspeed_kcs_enable_channel(struct kcs_bmc_device *kcs_bmc, bool enabl
>
> 	switch (kcs_bmc->channel) {
> 	case 1:
>-		if (enable) {
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF1, LPC_HICR2_IBFIF1);
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC1E, LPC_HICR0_LPC1E);
>-		} else {
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC1E, 0);
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF1, 0);
>-		}
>-		break;
>-
>+		regmap_update_bits(priv->map, LPC_HICR0, LPC_HICR0_LPC1E, enable * LPC_HICR0_LPC1E);
>+		return;
> 	case 2:
>-		if (enable) {
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF2, LPC_HICR2_IBFIF2);
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC2E, LPC_HICR0_LPC2E);
>-		} else {
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC2E, 0);
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF2, 0);
>-		}
>-		break;
>-
>+		regmap_update_bits(priv->map, LPC_HICR0, LPC_HICR0_LPC2E, enable * LPC_HICR0_LPC2E);
>+		return;
> 	case 3:
>-		if (enable) {
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF3, LPC_HICR2_IBFIF3);
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC3E, LPC_HICR0_LPC3E);
>-			regmap_update_bits(priv->map, LPC_HICR4,
>-					LPC_HICR4_KCSENBL, LPC_HICR4_KCSENBL);
>-		} else {
>-			regmap_update_bits(priv->map, LPC_HICR0,
>-					LPC_HICR0_LPC3E, 0);
>-			regmap_update_bits(priv->map, LPC_HICR4,
>-					LPC_HICR4_KCSENBL, 0);
>-			regmap_update_bits(priv->map, LPC_HICR2,
>-					LPC_HICR2_IBFIF3, 0);
>-		}
>-		break;
>-
>+		regmap_update_bits(priv->map, LPC_HICR0, LPC_HICR0_LPC3E, enable * LPC_HICR0_LPC3E);
>+		regmap_update_bits(priv->map, LPC_HICR4,
>+				   LPC_HICR4_KCSENBL, enable * LPC_HICR4_KCSENBL);
>+		return;
> 	case 4:
>-		if (enable)
>-			regmap_update_bits(priv->map, LPC_HICRB,
>-					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
>-					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E);
>+		regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_LPC4E, enable * LPC_HICRB_LPC4E);
>+		return;
>+	default:
>+		pr_warn("%s: Unsupported channel: %d", __func__, kcs_bmc->channel);
>+		return;
>+	}
>+}
>+
>+static void aspeed_kcs_check_obe(struct timer_list *timer)
>+{
>+	struct aspeed_kcs_bmc *priv = container_of(timer, struct aspeed_kcs_bmc, obe.timer);
>+	unsigned long flags;
>+	u8 str;
>+
>+	spin_lock_irqsave(&priv->obe.lock, flags);
>+	if (priv->obe.remove) {
>+		spin_unlock_irqrestore(&priv->obe.lock, flags);
>+		return;
>+	}
>+
>+	str = aspeed_kcs_inb(&priv->kcs_bmc, priv->kcs_bmc.ioreg.str);
>+	if (str & KCS_BMC_STR_OBF) {
>+		mod_timer(timer, jiffies + OBE_POLL_PERIOD);
>+		spin_unlock_irqrestore(&priv->obe.lock, flags);
>+		return;
>+	}
>+	spin_unlock_irqrestore(&priv->obe.lock, flags);
>+
>+	kcs_bmc_handle_event(&priv->kcs_bmc);
>+}
>+
>+static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
>+{
>+	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
>+
>+	/* We don't have an OBE IRQ, emulate it */
>+	if (mask & KCS_BMC_EVENT_TYPE_OBE) {
>+		if (KCS_BMC_EVENT_TYPE_OBE & state)
>+			mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
> 		else
>-			regmap_update_bits(priv->map, LPC_HICRB,
>-					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
>-					0);
>-		break;
>+			del_timer(&priv->obe.timer);
>+	}
>
>-	default:
>-		break;
>+	if (mask & KCS_BMC_EVENT_TYPE_IBF) {
>+		const bool enable = !!(state & KCS_BMC_EVENT_TYPE_IBF);
>+
>+		switch (kcs_bmc->channel) {
>+		case 1:
>+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF1,
>+					   enable * LPC_HICR2_IBFIF1);
>+			return;
>+		case 2:
>+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF2,
>+					   enable * LPC_HICR2_IBFIF2);
>+			return;
>+		case 3:
>+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF3,
>+					   enable * LPC_HICR2_IBFIF3);
>+			return;
>+		case 4:
>+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_IBFIF4,
>+					   enable * LPC_HICRB_IBFIF4);
>+			return;
>+		default:
>+			pr_warn("%s: Unsupported channel: %d", __func__, kcs_bmc->channel);
>+			return;
>+		}
> 	}
> }
>
> static const struct kcs_bmc_device_ops aspeed_kcs_ops = {
>+	.irq_mask_update = aspeed_kcs_irq_mask_update,
> 	.io_inputb = aspeed_kcs_inb,
> 	.io_outputb = aspeed_kcs_outb,
> 	.io_updateb = aspeed_kcs_updateb,
>@@ -373,6 +402,10 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
> 		return -ENODEV;
> 	}
>
>+	spin_lock_init(&priv->obe.lock);
>+	priv->obe.remove = false;
>+	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
>+
> 	aspeed_kcs_set_address(kcs_bmc, addr);
>
> 	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
>@@ -381,6 +414,8 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>
> 	platform_set_drvdata(pdev, priv);
>
>+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
>+				   KCS_BMC_EVENT_TYPE_IBF);
> 	aspeed_kcs_enable_channel(kcs_bmc, true);
>
> 	kcs_bmc_add_device(&priv->kcs_bmc);
>@@ -397,6 +432,15 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
>
> 	kcs_bmc_remove_device(kcs_bmc);
>
>+	aspeed_kcs_enable_channel(kcs_bmc, false);
>+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
>+
>+	/* Make sure it's proper dead */
>+	spin_lock_irq(&priv->obe.lock);
>+	priv->obe.remove = true;
>+	spin_unlock_irq(&priv->obe.lock);
>+	del_timer_sync(&priv->obe.timer);
>+
> 	return 0;
> }
>
>diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
>index cb38b56cda85..d14e8e0fa230 100644
>--- a/drivers/char/ipmi/kcs_bmc_client.h
>+++ b/drivers/char/ipmi/kcs_bmc_client.h
>@@ -38,6 +38,8 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
> int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
> void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
>
>+void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events);
>+
> u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc);
> void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data);
> u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc);
>diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/drivers/char/ipmi/kcs_bmc_device.h
>index dd90f8c2ebd6..a1410eb16308 100644
>--- a/drivers/char/ipmi/kcs_bmc_device.h
>+++ b/drivers/char/ipmi/kcs_bmc_device.h
>@@ -9,6 +9,7 @@
> #include "kcs_bmc.h"
>
> struct kcs_bmc_device_ops {
>+	void (*irq_mask_update)(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 enable);
> 	u8 (*io_inputb)(struct kcs_bmc_device *kcs_bmc, u32 reg);
> 	void (*io_outputb)(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 b);
> 	void (*io_updateb)(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 b);
>diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
>index 9f0b168e487c..f8b7162fb830 100644
>--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
>+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
>@@ -38,6 +38,7 @@
> #define KCS2CTL		0x2A
> #define KCS3CTL		0x3C
> #define    KCS_CTL_IBFIE	BIT(0)
>+#define    KCS_CTL_OBEIE	BIT(0)
>
> #define KCS1IE		0x1C
> #define KCS2IE		0x2E
>@@ -117,13 +118,23 @@ static void npcm7xx_kcs_enable_channel(struct kcs_bmc_device *kcs_bmc, bool enab
> {
> 	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
>
>-	regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
>-			   enable ? KCS_CTL_IBFIE : 0);
>-
> 	regmap_update_bits(priv->map, priv->reg->ie, KCS_IE_IRQE | KCS_IE_HIRQE,
> 			   enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
> }
>
>+static void npcm7xx_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
>+{
>+	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
>+
>+	if (KCS_BMC_EVENT_TYPE_OBE & mask)

Operand ordering still looks a little backwards here...

>+		regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_OBEIE,
>+				   !!(KCS_BMC_EVENT_TYPE_OBE & state) * KCS_CTL_OBEIE);

...and here...

>+
>+	if (KCS_BMC_EVENT_TYPE_IBF & mask)

...and here.


Aside from that,

Reviewed-by: Zev Weiss <zweiss@equinix.com>

>+		regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
>+				   !!(state & KCS_BMC_EVENT_TYPE_IBF) * KCS_CTL_IBFIE);
>+}
>+
> static irqreturn_t npcm7xx_kcs_irq(int irq, void *arg)
> {
> 	struct kcs_bmc_device *kcs_bmc = arg;
>@@ -146,6 +157,7 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc_device *kcs_bmc,
> }
>
> static const struct kcs_bmc_device_ops npcm7xx_kcs_ops = {
>+	.irq_mask_update = npcm7xx_kcs_irq_mask_update,
> 	.io_inputb = npcm7xx_kcs_inb,
> 	.io_outputb = npcm7xx_kcs_outb,
> 	.io_updateb = npcm7xx_kcs_updateb,
>@@ -186,11 +198,13 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
>
> 	platform_set_drvdata(pdev, priv);
>
>-	npcm7xx_kcs_enable_channel(kcs_bmc, true);
> 	rc = npcm7xx_kcs_config_irq(kcs_bmc, pdev);
> 	if (rc)
> 		return rc;
>
>+	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
>+				    KCS_BMC_EVENT_TYPE_IBF);
>+	npcm7xx_kcs_enable_channel(kcs_bmc, true);
>
> 	pr_info("channel=%u idr=0x%x odr=0x%x str=0x%x\n",
> 		chan,
>@@ -208,6 +222,9 @@ static int npcm7xx_kcs_remove(struct platform_device *pdev)
>
> 	kcs_bmc_remove_device(kcs_bmc);
>
>+	npcm7xx_kcs_enable_channel(kcs_bmc, false);
>+	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
>+
> 	return 0;
> }
>
>-- 
>2.27.0
>

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
