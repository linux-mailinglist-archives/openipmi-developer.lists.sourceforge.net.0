Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F00438C38D
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 11:41:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lk1fG-0002jc-5p; Fri, 21 May 2021 09:41:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <prvs=6775408355=zweiss@equinix.com>)
 id 1lk1fD-0002jQ-Fc
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 09:41:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2NuUn9G9ftrZgTaJlzJCJVoGiK3YT5HJ4xBGnps7U7A=; b=J7mpcdwlcMVtk3iW9imifp1qb8
 8A7KV8iMhYnQsj4zBvB2Dx9jQuH65eyORnn4TGDfBO3I0BmUiK/G2GxP8+MXXEKAM06R8IjkcxbAY
 Z1hZsFm657O2Ok+nm2nIZkizZ5gy710n7zjn3xbzcQgK0n44icBT1iN954LezCGNM0CE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2NuUn9G9ftrZgTaJlzJCJVoGiK3YT5HJ4xBGnps7U7A=; b=JzCOkxwn9T9AmjyNiZWriZ33RC
 CrVrWWik1Km0UOQn1X1tFQayOnI51ZbtOh5JkeEp+vbgxs7QcRVEyhoUmSlau3WPpKVOMQDiPSgxN
 KirF/MMyS5GqGQC2UOHEy+IMcb/1e0hpbX2iMfHyBGX+VGpvzrLd2vju/8twsmFBubpI=;
Received: from mx0b-00268f01.pphosted.com ([148.163.159.192])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lk1f7-0007hE-97
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 09:41:52 +0000
Received: from pps.filterd (m0105197.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14L7IFEl006393; Fri, 21 May 2021 07:18:45 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
 by mx0a-00268f01.pphosted.com with ESMTP id 38p2purt87-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 May 2021 07:18:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9btb7zIUIkshcJXHTm+T4J0SxsmMIH8Oz1VSJqaVp+xKDrMxLswzdqKbMvkzjUhr7+D5CyzZVLzZC7VMWwhSsdOAOT6mnZ1c6Vy4ZAyr+ndRQlCMlolOmt5HCMFtcqS1jKa/GoUzLQT+2YYaWqrDq3lJQeZwBD/G6PGwreW/u36EbqbQaoyrZhYJ8DZg8NHhOlkugARaUekBHzaJUSoWF5t1EbJvYMyzWvgatrBLvJEEJKpZGdYwI1ctuJzNkGoUprYncX2eIcE3u48mjBCsUhR10+hW0ohtGLeUvJGqFiObvrvPqTGfJRwtXuDgiBXg050eb2pYbNHzDkcLksP+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NuUn9G9ftrZgTaJlzJCJVoGiK3YT5HJ4xBGnps7U7A=;
 b=F/eBJWEaNjMupZQCU1lEagd6iSEfj/1D3WT0BLZ1gVmdFnH8Mc9mFAOFxyUzPoMOCJoqmr8TWF4E8zknid3k4tbdkch0qiOnho0LVPyQcfkTu5ymPJPtGfoO72JNuB3Dc6x5DGWwmbjM9tvVyatiaiYtYK6DlmqnH2HHBvE42AR4ChSVDEN8m8z+YQvJA3RWDRq53Rku3G3szNwc0F+yHqsiqYeEqmbXlaqkfBpfvQwXjbXG9gkEUuFepNBTwe2jyJPOqPXRbHZ/fybf66d+0CEFnSAkfgJFaq3ac5afqYyLmQx2WtmKieh1Nglr+GuYgtHLcdoPBsa7DgcT/KqfXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NuUn9G9ftrZgTaJlzJCJVoGiK3YT5HJ4xBGnps7U7A=;
 b=Qfx7Kah16C7Q5J/m3keJq/HZabyqqrjaKn7ujZLVRcJRII6Q06PqJR6yEdamjIk/f5DUZ0yixq5bNqL47S9UgezsHeeMN9j0hZk4pgSguux858uJeW4NA/2fPZpdXv/bndls3OG9iO8NrAxoDb5pWEpBpOcDrMjgDp6T0TxjHy0=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB3802.namprd04.prod.outlook.com (2603:10b6:5:ac::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.28; Fri, 21 May 2021 07:18:43 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 07:18:43 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: [PATCH v3 07/16] ipmi: kcs_bmc: Strip private client data from
 struct kcs_bmc
Thread-Index: AQHXThGHS2huPU27DEiEXqeORqWM0g==
Date: Fri, 21 May 2021 07:18:43 +0000
Message-ID: <YKde0k1UCZacJFc6@packtop>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-8-andrew@aj.id.au>
In-Reply-To: <20210510054213.1610760-8-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a3ead3a-3a79-4fb1-00a5-08d91c28aa60
x-ms-traffictypediagnostic: DM6PR04MB3802:
x-microsoft-antispam-prvs: <DM6PR04MB38023A9ED8487474E02504C2C3299@DM6PR04MB3802.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KVd9cMUlnkI2n79PJpr7O8OIk+gVxPzfw93CS/NjsOFyQRYQHHW0eGF85Qw0gf5X6UL4YDPKeSr9XR/VxPf7DYH5bPpDwsNJynhmpBtLzyfP+SOlDTVev8I1PBKBzMzFWE8oS/Pag2N7NYZnpqsbzC3zHhUlDYL86Wefl8gTRFiOqsK79XfN1BPAEWCOkm4DfHdHYuS1/ad11RxxNIaBgEFbuZwsblk+OfAkWtqZjvymfVv28FV0OwHvGG91jAEYFml/4IaTotC7xFLY6Dy/wSZeaJrtBFG7hVUlcdL9UVmILsHgDS+7wub2/sy8lRLhA3mrfruOCmuwgyvyo46vtMk229L7n3HzA4H3yuOQNJ8VHhy3JhMxu0NQ5dj0R3aOXUuQrmKFeTWGrRGE5OZ14o+HSDYQHC+XY5nY1vkEAs/MhOZB0juQJyifzvbxvMUtBFlsnTvSyPkahLhqqt7E0Slzcr5sEIbVI4N54i3c1l5p743PwCDguoW7Aw6fsKWE6L+SmeGS5U3HFWUe6doCyOp8oiQ1Hp3mtucWpHShNkO0TsuLse6eQpjiKIE/GzIG6b8odHv/qIkZHKeFww4bSrekQxz8vejFCKL8joO/sVI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(346002)(39860400002)(376002)(396003)(366004)(136003)(122000001)(5660300002)(7416002)(478600001)(33716001)(38100700002)(71200400001)(26005)(54906003)(66476007)(66446008)(76116006)(66946007)(8676002)(4326008)(8936002)(6916009)(9686003)(6486002)(2906002)(64756008)(6512007)(186003)(6506007)(86362001)(66556008)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?V3y3dXLajnbq1hd9Qyb1MaDGYsMjAhgYws8t4s3YjNSuFkjQQZrW6BuqOD8l?=
 =?us-ascii?Q?ubDS9fsxpIdvZpV5mnvYXXAg/31SnZkgUguyLMZBHuSXaphEbFwY7BIIGybi?=
 =?us-ascii?Q?wayYWigGoVb7eJMvupE+C/XghtHJuy6ROl/bQMttA93r4zjKPTBorIe31wwH?=
 =?us-ascii?Q?3vY4whoLFVy2oZON4fhRUH1qugmQj+VxYnEo1PGP0MNOgITP13fdD77TqJfg?=
 =?us-ascii?Q?QKEOx/0uw5XeerQo9H5SUSZDJ3EgT4CB/WXyDFvsbxwNDGoCSOqGu8MRSO4X?=
 =?us-ascii?Q?XZjdOLxBG7hVo6ZrK0+vfzK5afFhxwy3X/k4J4/RaQB4+A9d/a//bfEYR5CH?=
 =?us-ascii?Q?GOJsKc860xO+TlP0QZX1Og6zfHKTicqekpissf3s7n+faDCJVYAB5Lr8JXzd?=
 =?us-ascii?Q?wqyX3cEKxh4wBg/+AXn3MQ1zp3inzujK6FVJWpEs+UNQK2EfS4srB+fg/1HY?=
 =?us-ascii?Q?Yc+hbJY3VtQxjDPNccoMnNQkRK5yn4xrUnF8gu63iBUFYaBWavOJ12MR/xHQ?=
 =?us-ascii?Q?stqcw22GPT8hRLY41r9drUAlfC79tC6IIVm+Uu6/eRKj1KxgKO8TmPZvu0Ks?=
 =?us-ascii?Q?8IJxEECT/Yaeo5eNCk/feLigV+QS8qrS3mfxsB+WLGx4VFHIvBebj2t/Kb4r?=
 =?us-ascii?Q?+hU3FnDj3T9NUM4FX2NfMSLt3IBb+7oRTJAAIwNLmT670CDBN9/YoKvxgDA2?=
 =?us-ascii?Q?LUITvJpWxXM8GPSUd8x0U48fkVQvTP3grdGlv+ehPkoHizHcAa5Wcxe9WNdt?=
 =?us-ascii?Q?mMy6lg7A35u+0lQSCmSRP0wIQMGM0E6US7vR2S1wY00RvwQUhAa5z2/N8TMR?=
 =?us-ascii?Q?gwPyYrDx1axLAakSqUmlQILVU7Nul9EkGAjCRUEg2raC83B8eClk4q6xDpTE?=
 =?us-ascii?Q?xPSnEFH7eK7rOxk/oMW34ZhGdOBUVO4Kl9lOV2DMliKd8OsOmvzT4OLcrosa?=
 =?us-ascii?Q?rNLNFa7l4j2WJJrlRaHYQqGUpytTLm/gzzWjOW9Jd0n8KWPlAm9rhZW2Njs3?=
 =?us-ascii?Q?JmhKijvqqYdqGvfO6JUqX0Gx657UPnLPNmoe4QbXThAMD2Buu/VogBNTB5Dr?=
 =?us-ascii?Q?dJgT091/pNGMfzRqFpF5tHQsIHnGoU/5OV4gwduZAlqo1iRKNArvfmC/FWtk?=
 =?us-ascii?Q?CrT/wFAWOYoNRYfSMpwGP3OGN8fiIo4F2NAxBvltV/Px9MxVvtscfVyk7Xr5?=
 =?us-ascii?Q?EqR34pxNx9SBOv+6VGPRRM721BGgPmm+loLP89NSl/bGItHw0QlV8F9d/dHY?=
 =?us-ascii?Q?Ym+VooT4sAMTjittcOyg6O0PrrP4eJeOumi1HrodxNoqGLlURgChT4Mbk+Uq?=
 =?us-ascii?Q?jAttueppw/BDW65jYRcnfMjZ?=
x-ms-exchange-transport-forked: True
Content-ID: <13BFD1E750047B44AEDC6FB517ACF727@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a3ead3a-3a79-4fb1-00a5-08d91c28aa60
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 07:18:43.0664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D/XpwBQk56+Tn+gsgM7FtikWntaTp3OK7CTPJKmcMXzVzopn5wAXhjXTvjSA7fInFIbO9qXIUfon0qKql9rizA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3802
X-Proofpoint-GUID: xkDcA4KGWUSghhLvy1GUy2xHEgQNYrd7
X-Proofpoint-ORIG-GUID: xkDcA4KGWUSghhLvy1GUy2xHEgQNYrd7
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-05-21_03:2021-05-20,
 2021-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 clxscore=1015
 mlxscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=729 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105210046
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: equinix.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.159.192 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lk1f7-0007hE-97
Subject: Re: [Openipmi-developer] [PATCH v3 07/16] ipmi: kcs_bmc: Strip
 private client data from struct kcs_bmc
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

On Mon, May 10, 2021 at 12:42:04AM CDT, Andrew Jeffery wrote:
>Move all client-private data out of `struct kcs_bmc` into the KCS client
>implementation.
>
>With this change the KCS BMC core code now only concerns itself with
>abstract `struct kcs_bmc` and `struct kcs_bmc_client` types, achieving
>expected separation of concerns. Further, the change clears the path for
>implementation of alternative userspace interfaces.
>
>The chardev data-structures are rearranged in the same manner applied to
>the KCS device driver data-structures in an earlier patch - `struct
>kcs_bmc_client` is embedded in the client's private data and we exploit
>container_of() to translate as required.
>
>Finally, now that it is free of client data, `struct kcs_bmc` is renamed
>to `struct kcs_bmc_device` to contrast `struct kcs_bmc_client`.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Zev Weiss <zweiss@equinix.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
