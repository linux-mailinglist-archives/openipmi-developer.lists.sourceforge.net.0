Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 636393594E6
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 07:44:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUjwl-0005CF-8b; Fri, 09 Apr 2021 05:44:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <prvs=5733813a0f=zweiss@equinix.com>)
 id 1lUjwi-0005C2-J1
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SIQJGANvy4aZLxZ5KNDklXmbuGvzLCo1wnvU/7xr2dE=; b=HyjHKhMc0cGio4sxbozzwF9Frr
 L6Bbl8dXaAdhyGLZl1zRsMJHm34KE9iVnoVJjHO3WgGTFF0xdY6GZIzSMedoiyv0/8mdm1FCKBGl7
 JKiTNHOpoWCUJqC8GUIboDDYRo/Pnm44my9bKpXOHlw+XgpOxfy2lVc+4j/ZPPg2yVa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SIQJGANvy4aZLxZ5KNDklXmbuGvzLCo1wnvU/7xr2dE=; b=cukq1qfFqqa+yyUgStd6bjZh3o
 IMeeSuDuoGJpIyYsAIOCdMOvaS9PFWCajScPNb8ddIEC4IumBGFJMxTkk3Yk0rCgvgX4czvBxn6Wj
 TM2BPEsmH2h0GUEq9ydqH3PRU5EBIrmByKaxZU6Cl9yyasJeLGiOUCw78Y6dWFV/TTjg=;
Received: from mx0b-00268f01.pphosted.com ([148.163.159.192])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUjwZ-0003vN-Cp
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:44:44 +0000
Received: from pps.filterd (m0105197.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1395YSwg029717; Fri, 9 Apr 2021 05:44:07 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
 by mx0a-00268f01.pphosted.com with ESMTP id 37te7hgc8j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 09 Apr 2021 05:44:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuOjN/9plRuRaCzgUYOtwNaDp16UeVw/S2blBFp9NN1gOL4AC0YzNrjJERVbi5X412mfA8oFAG1GQbuXqEwExhLRaARL8hYYHOkU6zr2zDqblcjhEqGFhdQ33a0hFt8iyvBPuxAMRP1fqCMdf2AeUveVq0XIz8arlAYCaIs/JaGo5Uemeyrattu7HMkgqp45v36XX1AkPYYSpQ42G0kbSdNXGbKFVsmTE4HUFBhvHFG2IOzvUtEr9vpAcxBwIc+DdMRWE75keHsBqqBJ/XO8hXCllbF+BQli7X7PICIctVVasYoehBVl81lssAL2nCQLYfNCBqhHqvbSM21TdkdQkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIQJGANvy4aZLxZ5KNDklXmbuGvzLCo1wnvU/7xr2dE=;
 b=d4FMwswr52TImkgMd9SKNR4RZ4VWqLVCrZAwEzq4zeb9twC8wQU22sSbQ4iOBXqTcyCWbJ43BMps3MaX0V8zQhScsLWb/QYTs6yUwnmQd2pc7VagHFMEfnS9lHJdYk0GsYhavi2b7r6YNsqE2782sYhyqEaK8s1NTRiRGye2pZKXaLzQ5wfiOBfPlgGiEa0Ydf+z836REbswbYOcHKuJY1tN3mf9c9KFeBZ13hTjUgHvcFWbWZlpCGDyOvC2Z9q7hhOSzOxZ/Mn0EZMrpe96jfFXlp1T2cnRKQMV7MkISpuAeXWTyAPcmmCsuiqH7xD3K/XbJ3fFEweANEqXyqK3gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIQJGANvy4aZLxZ5KNDklXmbuGvzLCo1wnvU/7xr2dE=;
 b=Nxh2oAgfqn7tOD8zWL5BIeUyY0iHLcQkOrSQ4WyVYXmmo6ikvrIZKQF75aZBUsWJ5svBK0a/ozl7uDV4RgLAk9l7O2l3U6DNPJRICSGRGpH5CBcADF0/EdZbN7vJE41z1Ss9WEBfciLJLBc9J9QhvHDxEIGk09CwOqzpFWpFdLk=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB6732.namprd04.prod.outlook.com (2603:10b6:5:1::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.18; Fri, 9 Apr 2021 05:44:05 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad%5]) with mapi id 15.20.4020.017; Fri, 9 Apr 2021
 05:44:05 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>, "g@packtop" <g@packtop>
Thread-Topic: [PATCH v2 17/21] dt-bindings: ipmi: Convert ASPEED KCS binding
 to schema
Thread-Index: AQHXLQNa/Br1rKNdC02YFyK1SqJv1A==
Date: Fri, 9 Apr 2021 05:44:05 +0000
Message-ID: <YG/ppKEAs5EBUao3@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-17-andrew@aj.id.au> <YG/i9lSxxCMIzkRs@packtop>
 <29937129-3a17-4a32-a723-191b693a1e0c@www.fastmail.com>
In-Reply-To: <29937129-3a17-4a32-a723-191b693a1e0c@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20461bc9-7cd8-4969-cb83-08d8fb1a7cee
x-ms-traffictypediagnostic: DM6PR04MB6732:
x-microsoft-antispam-prvs: <DM6PR04MB673265AFBAF17D6F269F1FCAC3739@DM6PR04MB6732.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nD5Yqz2Jv4QCnHHufvgqrdV3qbWiuF6OuH/MLEeS9rZ3yxpUOZRcGnAOtNtXVM1zWutR4ixWOcbCAR3AKn+eYle6FjnBXx+PrHd0TRzcaBVbH6eZ0G18smhXbi2l/b1YouWT5cgNaBA1iD3CNA+5nxYX1WAnuV+KDpujkRUIy170maNfs5Q8clM/UyOAeFbuh24KQ/xqWQBnp+WrdNun6PPFPuyHbhjCugBsvCiZqzlFoPqh+yFJ6DRmPkKDRaCPcLAwLbOooT/qSunFgulqFKng6TgPF68Mq4kjdoWTV+z5YZ8a9IW+5ZMubNxNx5us6aweAA3+FaDlh0Aq66dboSjgZ4NR6AovaNZKdCRt4OoO0R7w4MPx6wj5F6tEVHRjq1sJZm7VF52lQEoqoIJuJouPpKoRlGDX8lhvdZn/1mSTNDwnIfR5W094g2PkKK28MxZlOfR5FFZINLgRvZDOzpchFVSv0XlDSACs6qYDva5vXlwDFs+oMiKaW9IhHZp+5fK8kkE/KjWHS2BiZ9cH4fcTY1PFPU1hFNqF5kZ0kf35ZZ/z+FMBo7RyfXJkWn0fakhBXA44MFKkfWDyVN/M5YQk6p1f4lgoNaCt+91HYrUospMpMePHEWMVCLSsSMhW7u2eSWx/RjdQV0OvGRJ/z+n6Mr+4tmQgApE7tQbjNJ4+j/r5FUaDZ5TRXgV1Z1/XlAHN86t6FO63lqKuWI3erdLUtxIo+irp5flIb8Uny6c9DCU00BbgFLFT1zWRY5kd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(136003)(396003)(346002)(376002)(366004)(39860400002)(316002)(5660300002)(6512007)(9686003)(33716001)(8676002)(2906002)(54906003)(7416002)(83380400001)(186003)(6506007)(6486002)(66946007)(71200400001)(966005)(64756008)(66446008)(76116006)(66556008)(4326008)(66476007)(478600001)(26005)(8936002)(86362001)(38100700001)(781001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?XGVZg1HuZOGjbNGv+oet3F4awmZ+3+9hwWgG5OeSBDePcFfCoMMNAFh3rgC4?=
 =?us-ascii?Q?U6Oe7xZ/L86SwW14hQg4WbvwnfXidscPZoa/YpC7xjyHhrpVWl1aUqStokQy?=
 =?us-ascii?Q?Pea7UApk1TAREq/uOvF2o8ppTVyLYP5PDrojDC1r3qeHry3N2qY3K1PWF725?=
 =?us-ascii?Q?+P/KnqccllciUeeS1hkyxUne5nGtAlceyUlUOE7cvsI7G97BG+fJ3z5wjk3D?=
 =?us-ascii?Q?VaspV+sQJC+pwWfL8H9C5yuBUz+U1ARmk/QpC6Af1CYW6K/pFX5vL6GEgpgE?=
 =?us-ascii?Q?Dpv+3wGRU+7q93OYDvKrWTAQnU81gWiScNyVSmMsJdGSjhCAUN+HlE4oDS9g?=
 =?us-ascii?Q?vP8Q2u4A1w2M1IPFSRioH2Nmw0+lmnHVAL6FlJ10Nm6z0c5Slwpc86NF+FVM?=
 =?us-ascii?Q?8vQR+40wb/FcSoYuhZX8dy6dxTl5yea2hhqaya6DeUMeDEYcLHZqvWqE2DYR?=
 =?us-ascii?Q?/u4S8EOTBmb273qcCGpJhROsWdIVU77To3xvoFyPVJZGXtQUuLUfgabDQGLD?=
 =?us-ascii?Q?zPB2JrMAwYNdIZ9tVKxBd58OziMCq7EiTsT246tdhhZHrA7UMPIVWVxDb7U+?=
 =?us-ascii?Q?ccZJdHpiLuKdg9R2mONi/VXimi6SJ4tFoy804TjTah8W8qkDy2FNxiV/4OHj?=
 =?us-ascii?Q?OMaL90jOyVaJiniTSNHzqcAF3cpp30mjQCggDoU6N0j4e3FhtVUuyQfW7kdG?=
 =?us-ascii?Q?UyO0HlV2kQM69wvFxVW/aWa3zI1U79hDv1aPCYH4FCKmSCtvhSi8mdlosHWw?=
 =?us-ascii?Q?dy3xh94ecezKm/x+zvV1zAdnitg1oQtjZlFl0yn4uDQCPsQQYaPsRAuCdFyb?=
 =?us-ascii?Q?5ZNfBiGbikri/ao+OlYc00EcRElGi2V0pUt5sNeWIDW9NQS1uD4LCPxPFyea?=
 =?us-ascii?Q?kwdsHaH8WRjZPoLn4ZCOZPw4E5eOGfAulX8/EhEfyQTkytTLhV+b6BhAGx0T?=
 =?us-ascii?Q?aKMCws0IhJ1nvyZo2fHaPzfO09EGalPKkUs/6NInNFu+QqDLCwiymo0pk75f?=
 =?us-ascii?Q?l5lvn17jzhSBHzVcHRvoh9trVd4du0NCiXluuE7z/49W9MTuwT55YQ9/kvCm?=
 =?us-ascii?Q?6ltQvstxK8ELTVk++JbeIcSH4wgjnCvrUFJdxPxxgWN23sNHUuc7oSnrCr3e?=
 =?us-ascii?Q?QafVuNOgHyNtNMHZELHjfB/tavyVOJCzP9hkj9jZSuBGDof1ZdpVpdZc9TGy?=
 =?us-ascii?Q?Hd5iIVwl4CsaQzNxWoU1WiWbaUOFEV5u9w8WpWXhHczfBG1TOlR0Qg5Jsfwj?=
 =?us-ascii?Q?MRhnRbZsV1+A1C/qDTNji0+iEE6FdpEmCc/CY3GRg/mhHs7Yc+Frvc6Hq6ms?=
 =?us-ascii?Q?c3PpOzyNorN4DtW+21ZR5BUZDXwQUVRboDv3r0bYEFvxMg=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <77BE7DEF9A057B4DBE4D8C530A1CA337@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20461bc9-7cd8-4969-cb83-08d8fb1a7cee
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2021 05:44:05.5411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1BCRykd6pM/ZR8J37PivPkfRTakGZtLSzune5RQlOjoqj5F6f8PcWoQKlDnySgSvpbqrBTbQPXErFlNNhWmRcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6732
X-Proofpoint-GUID: s0GzvA1EYCqkjICThSiOpMr6MmETEOq4
X-Proofpoint-ORIG-GUID: s0GzvA1EYCqkjICThSiOpMr6MmETEOq4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-09_03:2021-04-08,
 2021-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104090041
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: devicetree.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.159.192 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lUjwZ-0003vN-Cp
Subject: Re: [Openipmi-developer] [PATCH v2 17/21] dt-bindings: ipmi:
 Convert ASPEED KCS binding to schema
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 09, 2021 at 12:33:10AM CDT, Andrew Jeffery wrote:
>
>
>On Fri, 9 Apr 2021, at 14:45, Zev Weiss wrote:
>> On Fri, Mar 19, 2021 at 01:27:48AM CDT, Andrew Jeffery wrote:
>> >Given the deprecated binding, improve the ability to detect issues in
>> >the platform devicetrees. Further, a subsequent patch will introduce a
>> >new interrupts property for specifying SerIRQ behaviour, so convert
>> >before we do any further additions.
>> >
>> >Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>> >---
>> > .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 92 +++++++++++++++++++
>> > .../bindings/ipmi/aspeed-kcs-bmc.txt          | 33 -------
>> > 2 files changed, 92 insertions(+), 33 deletions(-)
>> > create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>> > delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
>> >
>> >diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>> >new file mode 100644
>> >index 000000000000..697ca575454f
>> >--- /dev/null
>> >+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>> >@@ -0,0 +1,92 @@
>> >+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> >+%YAML 1.2
>> >+---
>> >+$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml
>> >+$schema: http://devicetree.org/meta-schemas/core.yaml
>> >+
>> >+title: ASPEED BMC KCS Devices
>> >+
>> >+maintainers:
>> >+  - Andrew Jeffery <andrew@aj.id.au>
>> >+
>> >+description: |
>> >+  The Aspeed BMC SoCs typically use the Keyboard-Controller-Style (KCS)
>> >+  interfaces on the LPC bus for in-band IPMI communication with their host.
>> >+
>> >+properties:
>> >+  compatible:
>> >+    oneOf:
>> >+      - description: Channel ID derived from reg
>> >+        items:
>> >+          enum:
>> >+            - aspeed,ast2400-kcs-bmc-v2
>> >+            - aspeed,ast2500-kcs-bmc-v2
>> >+            - aspeed,ast2600-kcs-bmc
>>
>> Should this have a "-v2" suffix?
>
>Well, that was kind of a matter of perspective. The 2600 compatible was
>added after we'd done the v2 of the binding for the 2400 and 2500 so it
>never needed correcting. But it is a case of "don't use the deprecated
>properties with the 2600 compatible".
>
>I don't think a change is necessary?
>

It just looked inconsistent with the corresponding string in the
ast_kcs_bmc_match[] table; perhaps that should be changed instead then?


Zev


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
