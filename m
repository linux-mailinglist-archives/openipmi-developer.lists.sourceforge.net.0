Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A877FCCF5
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Nov 2019 19:17:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iVJgL-0007km-S5; Thu, 14 Nov 2019 18:17:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iVJgK-0007kZ-7I
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 18:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjpm4b9mcQobiugujjp85uT2NLqyAf1NWBJ4AYSjLZ8=; b=BVfLAeBZepbC0U/edOeMQNsF2f
 FlR8gUvNH/QwxUky+xSgjdoq4QAzhA3WPmm3eH/IBqRVrOA2bLuz2TRcEQJyyK24WoXi8us5IYhFt
 whtzX9LUc8ugbCApgEbWt5oL3dIYahs7bOzqSZYO8uuzEIp75C8G79KTJ9pP2aEk+7gI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kjpm4b9mcQobiugujjp85uT2NLqyAf1NWBJ4AYSjLZ8=; b=Zp62VsRPE9w0QyPBDVWXLH6JAt
 DUD7ASKfH+6mKaE+Nwhts+wNfAXcroWAlfK79IGZP4acAS1wYAlKuU9H/A6dNB0Bw2fCrQxI7kYLK
 y4bSvn4oRmWUtnNTUSUqGuExq3MH6kaqYRcfnQ4y1/g2b0X/xbOqDQTFEdhGMzMvlCaw=;
Received: from mail-eopbgr130071.outbound.protection.outlook.com
 ([40.107.13.71] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVJgG-00GdiR-8g
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 18:17:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsRfWBvhgo+RbQOIy+9p0P+UhOWM4EXaG1HPmzYqJzPTOq3Xf0/+SFhhDl14tJgn0C7AKYtf4qW5viOFKgFmtv95r7rUOF6tkt4SIBsKuTyDvhsTRhuohoAwv4hjKFjFyMCDCii3Sm25nQ0EZNBzNJ/rHvVY9/Y4JAH48B4FzRLcFKNALcHxsE5t5hDmax/Tw3KFkoXGp0oZ84TNp1RyT4Q/UVaGY2n6gu0tu2WymRQBhglJTT65mj/X5uArfzSe9LkCmIHDLxsfoQkVEVhirk7ntH+pxnJhQkkwTuuhPDhRI2LGDElbXxpGAJIVWECrBMjPyTvWAJqtsq6o9maHgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjpm4b9mcQobiugujjp85uT2NLqyAf1NWBJ4AYSjLZ8=;
 b=SJ5m5J0zuD12li5BF/bStF4z0AwhF7xorgpbk97bCTek03goUwQG1cEIh9wS0Xu/ttCVM14/di2RmcEYa8ekl/vMNQffWvh4qsY0cXeJvMgtu0b0DvyZN9BOnPBQmdvxU2bPTz7ixpT6S+kDMt21DK0Z9+ByEUEhmFPEXUYsVeBERzH7xODf7xhA+uzmcxv7UtKf+fNhFxR0pYDLD0mZaZ/jyBKdadjAXPhniPBfMdCWBxxCJV8rJHETBzeeXULVe/agvfCfowndgKMgc/sFlyhs/VqqvbYwLEmXXEKTtCiZFukg6H9/ExR+hvfZ6ATZQ79L5dzJi496NgqRq/rTuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjpm4b9mcQobiugujjp85uT2NLqyAf1NWBJ4AYSjLZ8=;
 b=rXdqJ6nB7E8yLEi8Xe77eIih23G9ac7nNyVE0kzjdALw25OWGqU+0G6rhVNHQI/8CTSBgWjlLb5MfXQAEItwBTO+aIy2/2L8jv+cDU5TjBlc6gzZoK7/+Ux6zUzAbcLykooR3Kvg0pe5BF3zwZ+ejLl0cnHdJyOlJ93QPJPFbIM=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2629.eurprd05.prod.outlook.com (10.172.225.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Thu, 14 Nov 2019 18:17:09 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2451.027; Thu, 14 Nov
 2019 18:17:09 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Vijay Khemka <vijaykhemka@fb.com>, "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH v4] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmnw2jQvA7h95R066pXtlC6V86aeKtZqAgAACfbCAAD5uAIAAA+mw
Date: Thu, 14 Nov 2019 18:17:09 +0000
Message-ID: <DB6PR0501MB271210124F9EE2FF15DADB1DDA710@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191113234133.3790374-1-vijaykhemka@fb.com>
 <20191114141037.GP2882@minyard.net>
 <DB6PR0501MB27121BF4E680F14A119232B4DA710@DB6PR0501MB2712.eurprd05.prod.outlook.com>
 <953CA2BD-8FE4-442B-8A6C-6A518E46FC55@fb.com>
In-Reply-To: <953CA2BD-8FE4-442B-8A6C-6A518E46FC55@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 519b0a28-d571-416f-9e86-08d7692edd38
x-ms-traffictypediagnostic: DB6PR0501MB2629:
x-microsoft-antispam-prvs: <DB6PR0501MB2629ADE569C2217A43C4F5A0DA710@DB6PR0501MB2629.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(366004)(376002)(189003)(199004)(13464003)(66946007)(80792005)(66476007)(66556008)(64756008)(6116002)(66446008)(476003)(3846002)(52536014)(2906002)(86362001)(486006)(8676002)(7416002)(25786009)(6246003)(229853002)(76116006)(8936002)(9686003)(55016002)(81156014)(81166006)(6436002)(186003)(26005)(5660300002)(102836004)(11346002)(6506007)(53546011)(446003)(14454004)(2501003)(305945005)(74316002)(7736002)(4326008)(76176011)(7696005)(478600001)(99286004)(14444005)(33656002)(316002)(66066001)(71200400001)(71190400001)(256004)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2629;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JGGi2tM8IHTjygYd0D88zsZwa8WIEVxMggZK5IL6OQ8+xtWUiHfWku4m7QhuAKL6HN4ZmDYUHDSQfOJdWk9QFi4T/5Xv5FHTD6zjVeBR8DdEMa7L6G0rMZdeRgDI7tks7chN8vzidvyEgxvjCTQ5ev5DgE0YOrhBY5lGCIDV6ot5U5faE+a+qOkoBSFA3ujb+Bt+kDtY6cDj8waHY87Wa6Z3LA7mMtb0gZEhumPdg2giUlDQXyhrT/0EK+Un7gkOvlluwKWGz/7WFQta3925b2q/BdrWLs0ScLiR9ielQ/WYZGRs/J9MMRrFyluQdYi1iG43pMkPNc4gtfRHm/Q1yFEPmOqTYKr6cjVG2kOMSAAMeMJTgXPAT3HWuA09rLhnnFvSMw7RMKveX6Wo3yC5C05/eOVb1YBqOOcwUmNwytWECz3L0ft5A56YZII/SxHd
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 519b0a28-d571-416f-9e86-08d7692edd38
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 18:17:09.5262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9aN/Oxzooq1vXOVYNjWS+C4mMGKwPs3m4dtEt4lT1kn+Uq+URvzyAnboP4x4khbZ/1rSP0GcnYQqVVQBW584dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2629
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iVJgG-00GdiR-8g
Subject: Re: [Openipmi-developer] [PATCH v4] drivers: ipmi: Support raw i2c
 packet in IPMB
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
Cc: "cminyard@mvista.com" <cminyard@mvista.com>, Sai Dasari <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

U2FtZSBwYXRjaCB3b3VsZCBiZSBnb29kLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
RnJvbTogVmlqYXkgS2hlbWthIDx2aWpheWtoZW1rYUBmYi5jb20+IA0KU2VudDogVGh1cnNkYXks
IE5vdmVtYmVyIDE0LCAyMDE5IDE6MDMgUE0NClRvOiBBc21hYSBNbmViaGkgPEFzbWFhQG1lbGxh
bm94LmNvbT47IG1pbnlhcmRAYWNtLm9yZw0KQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+OyBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgb3Bl
bmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgY21pbnlhcmRAbXZpc3RhLmNvbTsgam9lbEBqbXMuaWQuYXU7IGxpbnV4LWFz
cGVlZEBsaXN0cy5vemxhYnMub3JnOyBTYWkgRGFzYXJpIDxzZGFzYXJpQGZiLmNvbT4NClN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggdjRdIGRyaXZlcnM6IGlwbWk6IFN1cHBvcnQgcmF3IGkyYyBwYWNrZXQg
aW4gSVBNQg0KDQpZZXMgQXNtYWEsIFRoYXQgd2FzIGFscmVhZHkgaW4gbXkgcGxhbi4gRG8geW91
IHdhbnQgdG8gaW5jbHVkZSBpdCBpbiB0aGUgc2FtZSBwYXRjaCBvciBzZXBhcmF0ZSBwYXRjaC4N
Cg0K77u/T24gMTEvMTQvMTksIDY6MjEgQU0sICJBc21hYSBNbmViaGkiIDxhc21hYUBtZWxsYW5v
eC5jb20+IHdyb3RlOg0KDQogICAgVmlqYXksIGNvdWxkIHlvdSB1cGRhdGUgdGhlIGV4aXN0aW5n
IGlwbWIgZG9jdW1lbnRhdGlvbiB0byBsaXN0IGFuZCBkZXNjcmliZSB0aGlzIG5ldyBkZXZpY2Ug
dHJlZS9hY3BpIHZhcmlhYmxlIGkyYy1wcm90b2NvbC4NCiAgICANCiAgICAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KICAgIEZyb206IENvcmV5IE1pbnlhcmQgPHRjbWlueWFyZEBnbWFpbC5j
b20+IE9uIEJlaGFsZiBPZiBDb3JleSBNaW55YXJkDQogICAgU2VudDogVGh1cnNkYXksIE5vdmVt
YmVyIDE0LCAyMDE5IDk6MTEgQU0NCiAgICBUbzogVmlqYXkgS2hlbWthIDx2aWpheWtoZW1rYUBm
Yi5jb20+DQogICAgQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+OyBHcmVnIEtyb2Fo
LUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgb3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgY21p
bnlhcmRAbXZpc3RhLmNvbTsgQXNtYWEgTW5lYmhpIDxBc21hYUBtZWxsYW5veC5jb20+OyBqb2Vs
QGptcy5pZC5hdTsgbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7IHNkYXNhcmlAZmIuY29t
DQogICAgU3ViamVjdDogUmU6IFtQQVRDSCB2NF0gZHJpdmVyczogaXBtaTogU3VwcG9ydCByYXcg
aTJjIHBhY2tldCBpbiBJUE1CDQogICAgDQogICAgT24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMDM6
NDE6MzNQTSAtMDgwMCwgVmlqYXkgS2hlbWthIHdyb3RlOg0KICAgID4gTWFueSBJUE1CIGRldmlj
ZXMgZG9lc24ndCBzdXBwb3J0IHNtYnVzIHByb3RvY29sIGFuZCBjdXJyZW50IGRyaXZlciANCiAg
ICA+IHN1cHBvcnQgb25seSBzbWJ1cyBkZXZpY2VzLiBBZGRlZCBzdXBwb3J0IGZvciByYXcgaTJj
IHBhY2tldHMuDQogICAgPiANCiAgICA+IFVzZXIgY2FuIGRlZmluZSBpMmMtcHJvdG9jb2wgaW4g
ZGV2aWNlIHRyZWUgdG8gdXNlIGkyYyByYXcgdHJhbnNmZXIuDQogICAgPiANCiAgICA+IFNpZ25l
ZC1vZmYtYnk6IFZpamF5IEtoZW1rYSA8dmlqYXlraGVta2FAZmIuY29tPg0KICAgIA0KICAgIFdp
dGggQWFzbWEncyByZXNwb25zZSwgSSBhbSBvayB3aXRoIHRoaXMuDQogICAgDQogICAgT25lIHRo
aW5nLCB0aG91Z2guICBUaGlzIGlzIHRoZSBzbGF2ZSBkZXZpY2Ugb24gdGhlIEkyQywgbm90IHRo
ZSBtYXN0ZXIgZGV2aWNlIHRoYXQgaGFzIHRoZSBpc3N1ZSwgcmlnaHQ/ICBTbyBpdCdzIGF0IGxl
YXN0IHRoZW9yZXRpY2FsbHkgcG9zc2libGUgdG8gaGF2ZSBvbmUgU01CdXMgYW5kIG9uZSBJMkMg
SVBNQiBkZXZpY2Ugb24gdGhlIHNhbWUgbWFzdGVyLCByaWdodD8NCiAgICANCiAgICBGb3Igbm9y
bWFsIEkyQywgZGV2aWNlcyBhcmUgaW4gdGhlIGRldmljZSB0cmVlIGFuZCBnZXQgYWRkZWQgdG8g
dGhlIGtlcm5lbCBkZXZpY2UgaGFuZGxpbmcuICBJdCBsb29rcyBsaWtlIHRoYXQgaXMgbm90IGJl
aW5nIGRvbmUgaW4geW91ciBjYXNlLiAgQnV0IHJlYWxseSwgdGhlICJyaWdodCIgd2F5IHRvIGRv
IHRoaXMgaXMgdG8gaGF2ZSB0aGUgSVBNQiBzbGF2ZXMgYWRkZWQgYXMgTGludXggZGV2aWNlcyBh
bmQgYWRkcmVzcyB0aGVtIHRoYXQgd2F5LiAgSSdtIG5vdCBzdXJlIHRoaXMgd2lsbCBldmVyIGJl
IGEgcmVhbCBpc3N1ZSwgYnV0IGlmIGl0IGlzLCB0aGVyZSB3aWxsIGJlIHNvbWUgd29yayB0byBk
byB0byBmaXggaXQuDQogICAgDQogICAgLWNvcmV5DQogICAgDQogICAgPiAtLS0NCiAgICA+ICBk
cml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyB8IDMyIA0KICAgID4gKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysNCiAgICA+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9u
cygrKQ0KICAgID4gDQogICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9k
ZXZfaW50LmMgDQogICAgPiBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jDQogICAg
PiBpbmRleCBhZTNiZmJhMjc1MjYuLjEwOTA0YmVjMWRlMCAxMDA2NDQNCiAgICA+IC0tLSBhL2Ry
aXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jDQogICAgPiArKysgYi9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1iX2Rldl9pbnQuYw0KICAgID4gQEAgLTYzLDYgKzYzLDcgQEAgc3RydWN0IGlwbWJf
ZGV2IHsNCiAgICA+ICAJc3BpbmxvY2tfdCBsb2NrOw0KICAgID4gIAl3YWl0X3F1ZXVlX2hlYWRf
dCB3YWl0X3F1ZXVlOw0KICAgID4gIAlzdHJ1Y3QgbXV0ZXggZmlsZV9tdXRleDsNCiAgICA+ICsJ
Ym9vbCBpc19pMmNfcHJvdG9jb2w7DQogICAgPiAgfTsNCiAgICA+ICANCiAgICA+ICBzdGF0aWMg
aW5saW5lIHN0cnVjdCBpcG1iX2RldiAqdG9faXBtYl9kZXYoc3RydWN0IGZpbGUgKmZpbGUpIEBA
IA0KICAgID4gLTExMiw2ICsxMTMsMjUgQEAgc3RhdGljIHNzaXplX3QgaXBtYl9yZWFkKHN0cnVj
dCBmaWxlICpmaWxlLCBjaGFyIF9fdXNlciAqYnVmLCBzaXplX3QgY291bnQsDQogICAgPiAgCXJl
dHVybiByZXQgPCAwID8gcmV0IDogY291bnQ7DQogICAgPiAgfQ0KICAgID4gIA0KICAgID4gK3N0
YXRpYyBpbnQgaXBtYl9pMmNfd3JpdGUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwgdTggKm1z
Zykgew0KICAgID4gKwlzdHJ1Y3QgaTJjX21zZyBpMmNfbXNnOw0KICAgID4gKw0KICAgID4gKwkv
Kg0KICAgID4gKwkgKiBzdWJ0cmFjdCAxIGJ5dGUgKHJxX3NhKSBmcm9tIHRoZSBsZW5ndGggb2Yg
dGhlIG1zZyBwYXNzZWQgdG8NCiAgICA+ICsJICogcmF3IGkyY190cmFuc2Zlcg0KICAgID4gKwkg
Ki8NCiAgICA+ICsJaTJjX21zZy5sZW4gPSBtc2dbSVBNQl9NU0dfTEVOX0lEWF0gLSAxOw0KICAg
ID4gKw0KICAgID4gKwkvKiBBc3NpZ24gbWVzc2FnZSB0byBidWZmZXIgZXhjZXB0IGZpcnN0IDIg
Ynl0ZXMgKGxlbmd0aCBhbmQgYWRkcmVzcykgKi8NCiAgICA+ICsJaTJjX21zZy5idWYgPSBtc2cg
KyAyOw0KICAgID4gKw0KICAgID4gKwlpMmNfbXNnLmFkZHIgPSBHRVRfN0JJVF9BRERSKG1zZ1tS
UV9TQV84QklUX0lEWF0pOw0KICAgID4gKwlpMmNfbXNnLmZsYWdzID0gY2xpZW50LT5mbGFncyAm
IEkyQ19DTElFTlRfUEVDOw0KICAgID4gKw0KICAgID4gKwlyZXR1cm4gaTJjX3RyYW5zZmVyKGNs
aWVudC0+YWRhcHRlciwgJmkyY19tc2csIDEpOyB9DQogICAgPiArDQogICAgPiAgc3RhdGljIHNz
aXplX3QgaXBtYl93cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgY29uc3QgY2hhciBfX3VzZXIgKmJ1
ZiwNCiAgICA+ICAJCQlzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcykNCiAgICA+ICB7DQogICAg
PiBAQCAtMTMzLDYgKzE1MywxMiBAQCBzdGF0aWMgc3NpemVfdCBpcG1iX3dyaXRlKHN0cnVjdCBm
aWxlICpmaWxlLCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLA0KICAgID4gIAlycV9zYSA9IEdFVF83
QklUX0FERFIobXNnW1JRX1NBXzhCSVRfSURYXSk7DQogICAgPiAgCW5ldGZfcnFfbHVuID0gbXNn
W05FVEZOX0xVTl9JRFhdOw0KICAgID4gIA0KICAgID4gKwkvKiBDaGVjayBpMmMgYmxvY2sgdHJh
bnNmZXIgdnMgc21idXMgKi8NCiAgICA+ICsJaWYgKGlwbWJfZGV2LT5pc19pMmNfcHJvdG9jb2wp
IHsNCiAgICA+ICsJCXJldCA9IGlwbWJfaTJjX3dyaXRlKGlwbWJfZGV2LT5jbGllbnQsIG1zZyk7
DQogICAgPiArCQlyZXR1cm4gKHJldCA9PSAxKSA/IGNvdW50IDogcmV0Ow0KICAgID4gKwl9DQog
ICAgPiArDQogICAgPiAgCS8qDQogICAgPiAgCSAqIHN1YnRyYWN0IHJxX3NhIGFuZCBuZXRmX3Jx
X2x1biBmcm9tIHRoZSBsZW5ndGggb2YgdGhlIG1zZyBwYXNzZWQgdG8NCiAgICA+ICAJICogaTJj
X3NtYnVzX3hmZXINCiAgICA+IEBAIC0yNzcsNiArMzAzLDcgQEAgc3RhdGljIGludCBpcG1iX3By
b2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsDQogICAgPiAgCQkJY29uc3Qgc3RydWN0IGky
Y19kZXZpY2VfaWQgKmlkKQ0KICAgID4gIHsNCiAgICA+ICAJc3RydWN0IGlwbWJfZGV2ICppcG1i
X2RldjsNCiAgICA+ICsJc3RydWN0IGRldmljZV9ub2RlICpucDsNCiAgICA+ICAJaW50IHJldDsN
CiAgICA+ICANCiAgICA+ICAJaXBtYl9kZXYgPSBkZXZtX2t6YWxsb2MoJmNsaWVudC0+ZGV2LCBz
aXplb2YoKmlwbWJfZGV2KSwgQEAgLTMwMiw2IA0KICAgID4gKzMyOSwxMSBAQCBzdGF0aWMgaW50
IGlwbWJfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwNCiAgICA+ICAJaWYgKHJldCkN
CiAgICA+ICAJCXJldHVybiByZXQ7DQogICAgPiAgDQogICAgPiArCS8qIENoZWNrIGlmIGkyYyBi
bG9jayB4bWl0IG5lZWRzIHRvIHVzZSBpbnN0ZWFkIG9mIHNtYnVzICovDQogICAgPiArCW5wID0g
Y2xpZW50LT5kZXYub2Zfbm9kZTsNCiAgICA+ICsJaWYgKG5wICYmIG9mX2dldF9wcm9wZXJ0eShu
cCwgImkyYy1wcm90b2NvbCIsIE5VTEwpKQ0KICAgID4gKwkJaXBtYl9kZXYtPmlzX2kyY19wcm90
b2NvbCA9IHRydWU7DQogICAgPiArDQogICAgPiAgCWlwbWJfZGV2LT5jbGllbnQgPSBjbGllbnQ7
DQogICAgPiAgCWkyY19zZXRfY2xpZW50ZGF0YShjbGllbnQsIGlwbWJfZGV2KTsNCiAgICA+ICAJ
cmV0ID0gaTJjX3NsYXZlX3JlZ2lzdGVyKGNsaWVudCwgaXBtYl9zbGF2ZV9jYik7DQogICAgPiAt
LQ0KICAgID4gMi4xNy4xDQogICAgPiANCiAgICANCg0KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
