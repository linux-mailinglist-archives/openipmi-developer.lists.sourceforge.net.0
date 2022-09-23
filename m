Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3B85E7163
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Sep 2022 03:28:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obXUQ-0006wZ-BY;
	Fri, 23 Sep 2022 01:28:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1obXUM-0006wR-4i
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 01:28:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hY+/ZBlWDmkOUg1yldiV57qrEaj8q9+uaVUtgWuRNEk=; b=VxgWiFSTih7pXL8gzfJ63pO40y
 Kgf/zmIzZjRdSVheFtvv2JFh87isrGcKI3G23rfDPg4G4itlaWEXUSoC0zkinIoU71XDgYVMNMwQd
 w2Sy82JIGXVjk3197z8qsjtURGYygMTRi01XrtVK9RRz9MRG7QElHMgon9bu+URDqeYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hY+/ZBlWDmkOUg1yldiV57qrEaj8q9+uaVUtgWuRNEk=; b=dSatGKzaU/YB8X7FMJTbFeMNd8
 OFsxwN2goXP2WX9gsv6Y9pjBkRqkm8g4nVNpGVLy/uO+cOlQ9FixiCG6TM28GnoxgpSE9b6uqL/zW
 uCUlaxIlQM6xe7NN4RQOuhdcmt6mEoXh9sj4mhgtniH0+a6IT9fbVDVYp+v6BRqWNQ6U=;
Received: from mail-tyzapc01on2093.outbound.protection.outlook.com
 ([40.107.117.93] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obXUG-00067L-N0 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 01:28:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fow0QH0dPXZEt1PPFRyqQYfBAeUruI1i3iUmqyq3Atug2nNrxTzhLRnClsgEBRDMaiBGfexDqptYMt2saixBsmosqnC1SSfQ15RURTshCctuMOREMKmAcskbjzhkmH3IAGVxuWH+R3G4iFZmkWcutuqLK6WEzoz5Dutb26+tBVkETe6Yz0f7zGxpg3IRFbCveFdlgiVjHCu/1K8E4xHgyHef9d2BC1beN9Syw8n7DsRTXPn6OEMQjwWiFa7/ahd5IfTLADoGpfUdwV2ztSROi8HUXtbxRjSAbCfgIg892kOBW4jizEDaqiAQaPfphuPBWb9r3pJnubsU5mHba08MbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hY+/ZBlWDmkOUg1yldiV57qrEaj8q9+uaVUtgWuRNEk=;
 b=EEqTajk6jb5eBj5mxZfq+ImKT644qCKC2+BrEs4yVnjxjrA+bBcdhN31JXLQtgzsc2N5A0O44SHT8aNNMrspRd9KUYk/NaMuLnX/jCn/vj+nHNT9p8z8DSJjxZXcXxXTeHczC0wH46MivCwY4YJpuDHCOA7er8qYWJctrR3+EMC8uKhCVJb+h+FgVj5rUFh2gIgA+u+GIknJ3K2KQLnjLAmWfbZltwmwABOtkIxMgdeRPeqyzjQ1uySTio5V0wnyhrdO86OKAU0lxEzbmVM6/3EkAhJ6iUlzY5XL9OpMmugPxBVNL/2xTLXoiwL2DvowEvDWIB95THTdD7n37/8U7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hY+/ZBlWDmkOUg1yldiV57qrEaj8q9+uaVUtgWuRNEk=;
 b=otK4PvFzdlFs0CKyU2qMhEjBS7XLmAAgVyCw3bro03vyKduTiWxDNKkc84coS6ikejnlO/W8XefHoHvs6feZhmX19g54JuQhv9NJaHd56Clk5tC11NG1/TqXDC/ct2rBsIqieQSnPGqihze3dLbmG6aLONeBLeWJBjFOZe1yj46YqsUM81AkUP1gZn5S1xB1ZFRh39x/12UEzEhCJHOybWNHoTd5mIkvXyXeI40ew2QvbmRy0fs2Do+iZZ6Nv5p5VKr7y5NhjgQMrMU2NeAigXBOF6L8YSI+N9vSkksowKSobOUt1Kx5OlLOogNp0qIPd2VPWQ5TylUTQQe6/HwOQw==
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com (2603:1096:203:b8::10)
 by PUZPR06MB5473.apcprd06.prod.outlook.com (2603:1096:301:103::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 01:12:52 +0000
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47]) by HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 01:12:52 +0000
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] ipmi: kcs: aspeed: Update port address comments
Thread-Index: AQHYzJVUtbRY+/SRCUqfvaXOF1k3N63r0TSAgABVS9CAAATrAIAAASRQgAAGH4CAAAckoA==
Date: Fri, 23 Sep 2022 01:12:52 +0000
Message-ID: <HK0PR06MB37794C10DAB4CD77C098927791519@HK0PR06MB3779.apcprd06.prod.outlook.com>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
 <YyywI8265vECnEHv@minyard.net>
 <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <Yyz70LckHqyiNhGa@minyard.net>
 <HK0PR06MB377992E9AF7B91CE41452B4A91519@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <Yy0B5+jzc7R7Drz7@minyard.net>
In-Reply-To: <Yy0B5+jzc7R7Drz7@minyard.net>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HK0PR06MB3779:EE_|PUZPR06MB5473:EE_
x-ms-office365-filtering-correlation-id: 67c2210b-b0d5-4d76-0803-08da9d00bd08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DCO6yiyKYETVNK/p3kB8OvVvGKLuGhDU4ghD9zt2GfvQ+s5mKJfbQkJ6cMiNdE7xEc3CceGqVuD2EE0PR47AuuzY1ve9O03vwSftOQRiFBdakiOw8tNy73l5Ga9aS7SNo4NY7jTdAHjHFVYrwkPHJ67AWNa4R9ImkSt5/7dtnGJOGSuKN24PS+E5z8VZNhKjjjqdlOtYxJJ5XnnZCW8O9x8ZZDnjFkjz7SDFIWWbEKzur3MkiWRS16Up5RVbiP2o6enwBiiRaOySspBVk4le+vRH+ufl3y+9nmiiA4dFqKfAMAUlT2YYg9XN6SB84M6yWuUHh/uO97q/y60esY6WkbsuTCosQk1tLNG4Aee/noodHauAx/tDYvSduop8ljbfaFU7ZRWEGGjtpZAOklF81EjAd0pAoDsb8m0x0izVpeYInrqsxnJKc7gJHXMCcJG0lGtZ8qc2W0bGeJg3vxxpcoTfDY9uR13JpmaPjgWQ7rj4W1OyY+Mt3D6HpMhVAq/oCywBhH1vdAwtNxxDDcLnghpMuCv1YdSgFeWklfytm9wTuTW1F94GVG8a+UDKsFgwHjnQyx9Qnhk2LQO/xqoB9b3I37aAzeybSGotAS8Q8tysnMA8DhOrZQTDoUdvfDVbbl5pcEkHnRn7saMp7mi8fKcg+Dn7oWPCRUw3W58ESeVczz06x3dsQkaUkjybndipqbHemjhylruWRTl4ugjmfWFVcutNXldYk28N9GOipt0B5BByIiziKQuvGAsMHjAMEU829RoNVRIHLXWxWHDkGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3779.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39850400004)(136003)(346002)(376002)(366004)(451199015)(38100700002)(15650500001)(71200400001)(478600001)(38070700005)(86362001)(186003)(66446008)(64756008)(76116006)(66476007)(83380400001)(66556008)(66946007)(4326008)(52536014)(2906002)(6916009)(26005)(54906003)(9686003)(6506007)(7696005)(5660300002)(8936002)(8676002)(122000001)(55016003)(316002)(33656002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnFCM1lNN3BQVWp1OTI5bi9MSWcvdjgwZ045WWwrb2o4d3ZJMllySVVxOU1y?=
 =?utf-8?B?bVVnSFZoWWJVUkZkYUdPSm1iT1ZWNGFrMGx2QzQ1MjZJQmxBQThrT3NBUUdJ?=
 =?utf-8?B?RkhGQ2RvUEJUSTVYNVM1d01Qam1PRlhxUGorYldDR0xLSUhEakRONGRaSVJB?=
 =?utf-8?B?T2VoVDZyODg2eVRjTS9aUEdqT3RpU0VqRlRrYnhGRUMvZExTb3BhVjM0Y3N4?=
 =?utf-8?B?Z3hEaWloaEY2d3dPK0xoVGFvbVFrRENQY1JKdlNWRnB0R0dFS1pOMkd0UDND?=
 =?utf-8?B?ejVOUmlUTko1OHJYNnBkbG04bncwSlR2azY1YllocDc0MERGSnJEaStISU0w?=
 =?utf-8?B?ZlpkRDRTcmtqTy81MGNSVktYVDNlbGppbkJYb3FNZC9uTTh0RzlyaTdsRzRM?=
 =?utf-8?B?aUV6V3haY1BFVlgxbnJPNDc3U3VoRHhxOW1qN2V3TXUvQ0oxRWQydHQvUUY1?=
 =?utf-8?B?cHdtR3RYZ01wekIrK1N5NWVkam5YbVBZSUJtSXBwbHJhTTdLMnJHVWpibTBq?=
 =?utf-8?B?KzlxQ2t4V2IxMVNYNlNzaDRuWkdvWkJjQ1lodkRDWXJFSFlla3YwRDFGVjZV?=
 =?utf-8?B?S09YV0lmMGtwaFdkSHhHY21oSm1HTzlNYjFHcG5qQVQ5Z0NCWGwxaTNPZWVh?=
 =?utf-8?B?b1ZCWXgzbnY5M3dQb1dTNmowd0l1Ym9kMjdJTFc3Uzgrc1dKSkcraGZLRDlh?=
 =?utf-8?B?NGxySXNGU25yNWF6c3pxTTc0dVFwemg2U2lNMkFDQnUwWDV2dkpxL1FnZTNr?=
 =?utf-8?B?dG9qaWp0RXp1bFkxRGdNdWhtbTZlQ01hQzJ2U3dQRGtsNHBZek55dWtKcXU2?=
 =?utf-8?B?VXYxdkZ0MVkzaVNjY0tBYllTNFh2SzdhNUtXMnE5RGljYnliTjdnaDV1L2JK?=
 =?utf-8?B?eUhSKzVuaVhqT2w0Z01qYnNsdUdLdHVlL28zaXV0TmRHeUI0b2dVNkZpdzU5?=
 =?utf-8?B?dFlITk1nZEVmbjQyU3QrcklITnlZTjVQbG42bndpNm9rcmdJZG0yUitESjZX?=
 =?utf-8?B?NUlzMUpkTEx3WVQ2Mk9JNGswM2dkZWczYXlOMU9RVm1pMGRKVWxHWkhuL0lm?=
 =?utf-8?B?WWJTTXNNTlpIb0FuNTdBVUNRSDVQeCtUMzI2SzdjeDVHNFduK1NHeVBKUzRM?=
 =?utf-8?B?YVV4S0FVcmZpV1JHWWxBVysvajhpMVYrVUVFZm5aOU0rQ2t6T2tRL3pWcGxS?=
 =?utf-8?B?aE5TdDZrREJzSmJBeit6YkV4em5JQTVJNkx4N2EzWmJING1VYkM3R0hkdCs5?=
 =?utf-8?B?YlBONk1hOGkyb2VDMGlVa0w1RU5wWVFBSGJhNlRBdkRpNFJLaDJMUGpvMDFX?=
 =?utf-8?B?U3h4SnlHTkVpSnBVWUszQUhDazBPY2huTGFzQ2R4d01GY0xsaDlJdTF4Q3l6?=
 =?utf-8?B?YlNtdk5KTmZ5Z0VrNVBwV2lBUC96ZzR6bnRqVytDY0JrMkFkdTBLZDIrV01k?=
 =?utf-8?B?RHZ1UklFSENiQTV2NWZ4N0Yvc2JMWkZ4Q0p1dVd6dXNyc3kyU0NLRzdhWWRr?=
 =?utf-8?B?d21tVmVERDYyN2drSWtUbFZQYjYrYjkrRUgyZ3I5Q0FEdFk0WkJtWDh0eklh?=
 =?utf-8?B?bWRsRVVEU1BTSERac2srZmhNN0JmWFZIUkdQNUk1ZnpZZXp4UVlHeXcwWDRM?=
 =?utf-8?B?TU9GdTFxK0dJZ1Y2ajNQdEkzN09BeWhRdzkvdUQrS3hzdE5iWE9NSkN6Wjl5?=
 =?utf-8?B?dWhtZThRT2J5NjE3YmZGNTFtMi9oc01nUFExTG02b3RieTA4dytzR2JIU3Ev?=
 =?utf-8?B?dThiZXN3bTIzT1RuUmlyQmY3a04zRUg3OUpadTNMWlgzKy9qWTlDQ2N0cVpC?=
 =?utf-8?B?SmxXSzd3Y1RQWjN6SStoNUUrTUROYktTSW53bE5mSGRLbkY0WCtTNUhrVmhN?=
 =?utf-8?B?dVo5VFNWMTNNWmkzays2a01yTVFzQzh4M1ltYmFmUEJQZk9VRlZvS3pFMEFa?=
 =?utf-8?B?V05YQnZod1RmMVByaGZCOWVWbjdMRXF1UWl5ZTdlbzBrc3RSQlZtT2xTZzVi?=
 =?utf-8?B?SitwYlFtenVrVEpxUnlCWmxGUStxWFBDSlp4NStDcC9zRGM2S3QwdDhmd0dF?=
 =?utf-8?B?Q21HWUFSNmR1N1JxQkd0QzNYeFRmK2NXVTM0RUpwbjN5N2o1M2pZeDQzVm4x?=
 =?utf-8?B?bzlFaXFMMVdYQ1J4OGkyQnhOcUI1djQvYU4yQWs3dXVZVWxNbXMzMkFMMjY4?=
 =?utf-8?B?Q1E9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3779.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c2210b-b0d5-4d76-0803-08da9d00bd08
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 01:12:52.3171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mArr/7SLgs0aShfJUX+j6qHQF6vRI+qbt2lWEQtxNEdCBdKFOIohtLlC8UaStvolsoG1kAknvyQjY3KXWNQJGpUE9/o6vz3xwaVEAWak6hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR06MB5473
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of
 Corey
 Minyard > Sent: Friday, September 23, 2022 8:47 AM > > On Fri, Sep 23, 2022
 at 12:38:08AM +0000, ChiaWei Wang wrote: > > > From: Corey Mi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.117.93 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.117.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obXUG-00067L-N0
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Update port
 address comments
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
> Sent: Friday, September 23, 2022 8:47 AM
> 
> On Fri, Sep 23, 2022 at 12:38:08AM +0000, ChiaWei Wang wrote:
> > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey
> Minyard
> > > Sent: Friday, September 23, 2022 8:21 AM
> > >
> > > On Fri, Sep 23, 2022 at 12:08:07AM +0000, ChiaWei Wang wrote:
> > > > Hi Corey,
> > > >
> > > > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey
> > > Minyard
> > > > > Sent: Friday, September 23, 2022 2:58 AM
> > > > >
> > > > > On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> > > > > > Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
> > > > >
> > > > > Even if it's no longer maintained, is it useful?  It seems
> > > > > better to leave in useful documentation unless it has been
> > > > > replaced with something
> > > else.
> > > >
> > > > This document has no permeant public link to access.
> > > > Aspeed has dropped this file but we keep receiving customer
> > > > request asking
> > > for this document.
> > > > The most important part regarding KCS port rule is still kept in
> > > > the updated
> > > comment.
> > >
> > > I mean, if you have code that is implementing what is documented,
> > > why did you remove the document?  I don't understand why you would
> > > retire documentation that people still want to use.
> > >
> > > I could put it on the IPMI sourceforge or github page as a historical
> document.
> >
> > This document is a personal note of one of our former employee.
> > It is known to only the owner and his supporting customers.
> > Most of us has no access to this document.
> > In addition, after chip revision, certain information is not guaranteed
> anymore.
> 
> Ok, I'll take the patch.  Thanks.

Thanks!

Regards,
Chiawei


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
