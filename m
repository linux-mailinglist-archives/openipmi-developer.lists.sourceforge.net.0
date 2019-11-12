Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0463EF9E3D
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Nov 2019 00:38:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUfjX-0000CO-LP; Tue, 12 Nov 2019 23:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iUfjW-0000CH-Lw
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 23:38:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eq+gJzrez38FZSZhBT7GxYJg6olKOnzchDtJYBS0Xjw=; b=eANVt9/GRt7xij482JppM52CMj
 2hO9HbcIt+vlIgLsskLFLRj20JdR2PKAjb9oChBzQdEZk9Bfa/PHiryR6SOFuifOxK/mVUb5i5tjM
 t7Nf5w9nRDfZxM3W8HONjgeUJjsWl1U6VE532AUSkfZAV6/qhQICFPGwRUnfqmr9ZHHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Eq+gJzrez38FZSZhBT7GxYJg6olKOnzchDtJYBS0Xjw=; b=G8wYsaBRt0Ne1db2kWzFV8fXZA
 5XMZ847wj5pj3cQzl83UHbwOvf2SDNG3z/KB9nCUxfptgOoihSfrFlD8mlxf38lzilqBJpaLYSBlI
 2M/R9dSKLSbEbbZD+nlhFAiMDPjsxvcXJpxuwY0SBu9wE3mS1H6S1uYB41bLmkLOondI=;
Received: from mail-eopbgr130042.outbound.protection.outlook.com
 ([40.107.13.42] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iUfjT-0007kh-4L
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 23:38:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oA0IJP46yXVcBgcDZZRYwSYThO/bjx2QxUY2tRMXTZX16PbYVi/E+WpwPpN8hrKHwadsb4rGpMI3MyGjXkF8EuvA/xpIGwAMVqP9gxkzQQqxKNCtOZRooCg+Ea2PuhjAcPEdvplwOvp73t+VY2SH1MnPeJN4wYWsf8s23t0Mlde5RrRNJdBLru7W4zgQkPKpJ7QaklKGkXazbef1d5l+RgAyuHRDOBQcvrviMQwWPgDX2wv99QpQxk4aoV9UxfioXTJk3Ftv23DalZrMi1cwAAjJ+wc1zu+WQKhefUUKxwSWn3OKhOe9LnqDWaNSa0aankn89q9u2EnSvH5SfvVH2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eq+gJzrez38FZSZhBT7GxYJg6olKOnzchDtJYBS0Xjw=;
 b=lAWURvO9DbZ8miOztBkqAQiYQAA53QlaSizHJpTexDDuO1ApBKCqhpqxtYKF73KS7smB5RWRI3m3FrrECdeXM3pv87k8r6aEBxu+1HIqvMoxREO/YsGmFAyz4Oci6VLJqRqC3Y5nm+So+GU/E9SKB2xeDQYSRG/U8H8Db8oZFC/17IlQfR3Ks18CrVbPz0ETXeOqBmMQftA5Bnh5RCfl3DWP48nuzVbIsVEob3FcoKs3I+zAYmS9T87Oc08JB6rZdUsWX8yCP0fMzkEeKwwrdF+K2isBc6dJYgAyt3L6TuVbXUX3el0q79TDWMrnIRpdqEQe3eKSdtvdkRqkgEMeMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eq+gJzrez38FZSZhBT7GxYJg6olKOnzchDtJYBS0Xjw=;
 b=hzKfRAUJdBURkeJ63BH4WDZMvyY27Ps1klS1/XpbVQe04AIw73Kfj6AwoyEaz/P/Oixzr6kcF1oHIoMW9OxfCmQRUgUBDf+horsX7FXH+kr8dFk71qD0KF4E2nwUOJ6YNT1cjF6FZdz0LPFQdyITAtrrBOFK63RaCcoVikJragc=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2311.eurprd05.prod.outlook.com (10.168.55.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Tue, 12 Nov 2019 22:06:00 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2430.027; Tue, 12 Nov
 2019 22:06:00 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>, Vijay Khemka <vijaykhemka@fb.com>
Thread-Topic: [PATCH 2/2] drivers: ipmi: Modify max length of IPMB packet
Thread-Index: AQHVmQJk8sCJH6Uy7E6qy5eNUr7iE6eHfQWAgAB3iACAAAk2AIAABexw
Date: Tue, 12 Nov 2019 22:06:00 +0000
Message-ID: <DB6PR0501MB27127CF534336BDEB5D005FFDA770@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112023610.3644314-2-vijaykhemka@fb.com>
 <20191112124845.GE2882@minyard.net>
 <7BC487D6-6ACA-46CE-A751-8367FEDEE647@fb.com>
 <20191112202932.GJ2882@minyard.net>
In-Reply-To: <20191112202932.GJ2882@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3f809077-af09-45f7-171d-08d767bc8091
x-ms-traffictypediagnostic: DB6PR0501MB2311:
x-microsoft-antispam-prvs: <DB6PR0501MB231166F85E7E0D76992DB4F5DA770@DB6PR0501MB2311.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(13464003)(5660300002)(8676002)(9686003)(6246003)(26005)(486006)(476003)(66066001)(305945005)(14454004)(6116002)(6436002)(7736002)(3846002)(52536014)(229853002)(110136005)(86362001)(54906003)(316002)(81156014)(33656002)(81166006)(25786009)(66946007)(71190400001)(66446008)(66556008)(71200400001)(11346002)(2906002)(66476007)(76116006)(2501003)(55016002)(4326008)(7696005)(53546011)(76176011)(6506007)(186003)(102836004)(8936002)(80792005)(478600001)(7416002)(99286004)(446003)(14444005)(256004)(74316002)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2311;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I1q4QvZocZrEL1JjvHgTjhko8MX/70ZkkuwQn6Eg8jYcquQfEWglQGuwOXmHN5jPyUX26CDHrLU5GbMGtas6u7d9N9s3FBdzK9K+itQZBXEqWU00ajQjrRHW9H8aYybTj0sEqnAUAP9+v7xxlf2vvJ2Vq+PbvUlH4PEUvLHbkgIvCE/FuPxNbNzj0eTy2qB1DYYqJFhr6XSPufEe9WoNHBci0nLVFh61HpbcItBzaAd4i9MTMpdaLdnpM3c0XV9Ux9pEr3IkEjkBPSPJUSxmore27/YlOGgXU/0TVJ+87Byo8CMPH9sqs090EIL6n+GOiM+4t7fKebHEqR/k5VGRE5pJIUsJdf60W4pxxZ5d5tGz0iCoQhHkCwhhGuOrAxdFwBldhgl5kH1lwj5LCSpaHmQtZNoLrR3GeXGo5vovCCacFTgM/uCJhipw4WVuzn9X
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f809077-af09-45f7-171d-08d767bc8091
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 22:06:00.2890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hRrXUFfG4Ti47X56zTbCbSjkBsYtnboxSPwihgxvI3U5eSNzMbftsWwxzemi4eCorW00pEvNp5ip7UI4Zk23UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2311
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUfjT-0007kh-4L
Subject: Re: [Openipmi-developer] [PATCH 2/2] drivers: ipmi: Modify max
 length of IPMB packet
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

QWxzbywgbGV0IG1lIGNsYXJpZnkgb25lIHRoaW5nLiBJdCBkb2Vzbid0IG1hdHRlciBob3cgYmln
IHRoZSByZXNwb25zZSBpcy4gSW4gbXkgdGVzdGluZywgSSBhbHNvIGhhZCBzb21lIHJlc3BvbnNl
cyB0aGF0IGFyZSBvdmVyIDEyOCBieXRlcywgYW5kIHRoaXMgZHJpdmVyIHN0aWxsIHdvcmtzLiBJ
dCBpcyB0aGUgdXNlciBzcGFjZSBwcm9ncmFtIHdoaWNoIGRldGVybWluZXMgdGhlIGxhc3QgYnl0
ZXMgcmVjZWl2ZWQuIFRoZSAxMjggYnl0ZXMgaXMgdGhlIG1heCBudW1iZXIgb2YgYnl0ZXMgaGFu
ZGxlZCBieSB5b3VyIGkyYy9zbWJ1cyBkcml2ZXIgYXQgZWFjaCBpMmMgdHJhbnNhY3Rpb24uIE15
IGkyYyBkcml2ZXIgY2FuIG9ubHkgdHJhbnNtaXQgMTI4IGJ5dGVzIGF0IGEgdGltZS4gU28ganVz
dCBsaWtlIENvcmV5IHBvaW50ZWQgb3V0LCBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gcGFzcyB0aGlz
IHRocm91Z2ggQUNQSS9kZXZpY2UgdHJlZS4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IENvcmV5IE1pbnlhcmQgPHRjbWlueWFyZEBnbWFpbC5jb20+IE9uIEJlaGFsZiBPZiBD
b3JleSBNaW55YXJkDQpTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAxMiwgMjAxOSAzOjMwIFBNDQpU
bzogVmlqYXkgS2hlbWthIDx2aWpheWtoZW1rYUBmYi5jb20+DQpDYzogQXJuZCBCZXJnbWFubiA8
YXJuZEBhcm5kYi5kZT47IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlv
bi5vcmc+OyBvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OyBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOyBjbWlueWFyZEBtdmlzdGEuY29tOyBBc21hYSBNbmViaGkg
PEFzbWFhQG1lbGxhbm94LmNvbT47IGpvZWxAam1zLmlkLmF1OyBsaW51eC1hc3BlZWRAbGlzdHMu
b3psYWJzLm9yZzsgU2FpIERhc2FyaSA8c2Rhc2FyaUBmYi5jb20+DQpTdWJqZWN0OiBSZTogW1BB
VENIIDIvMl0gZHJpdmVyczogaXBtaTogTW9kaWZ5IG1heCBsZW5ndGggb2YgSVBNQiBwYWNrZXQN
Cg0KT24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDc6NTY6MzRQTSArMDAwMCwgVmlqYXkgS2hlbWth
IHdyb3RlOg0KPiANCj4gDQo+IO+7v09uIDExLzEyLzE5LCA0OjQ4IEFNLCAiQ29yZXkgTWlueWFy
ZCIgPHRjbWlueWFyZEBnbWFpbC5jb20gb24gYmVoYWxmIG9mIG1pbnlhcmRAYWNtLm9yZz4gd3Jv
dGU6DQo+IA0KPiAgICAgT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDY6MzY6MTBQTSAtMDgwMCwg
VmlqYXkgS2hlbWthIHdyb3RlOg0KPiAgICAgPiBBcyBwZXIgSVBNQiBzcGVjaWZpY2F0aW9uLCBt
YXhpbXVtIHBhY2tldCBzaXplIHN1cHBvcnRlZCBpcyAyNTUsDQo+ICAgICA+IG1vZGlmaWVkIE1h
eCBsZW5ndGggdG8gMjQwIGZyb20gMTI4IHRvIGFjY29tbW9kYXRlIG1vcmUgZGF0YS4NCj4gICAg
IA0KPiAgICAgSSBjb3VsZG4ndCBmaW5kIHRoaXMgaW4gdGhlIElQTUIgc3BlY2lmaWNhdGlvbi4N
Cj4gICAgIA0KPiAgICAgSUlSQywgdGhlIG1heGltdW0gb24gSTJDIGlzIDMyIGJ5dHMsIGFuZCB0
YWJsZSA2LTkgaW4gdGhlIElQTUkgc3BlYywNCj4gICAgIHVuZGVyICJJUE1CIE91dHB1dCIgc3Rh
dGVzOiBUaGUgSVBNQiBzdGFuZGFyZCBtZXNzYWdlIGxlbmd0aCBpcw0KPiAgICAgc3BlY2lmaWVk
IGFzIDMyIGJ5dGVzLCBtYXhpbXVtLCBpbmNsdWRpbmcgc2xhdmUgYWRkcmVzcy4NCj4gDQo+IFdl
IGFyZSB1c2luZyBJUE1JIE9FTSBtZXNzYWdlcyBhbmQgb3VyIHJlc3BvbnNlIHNpemUgaXMgYXJv
dW5kIDE1MCANCj4gYnl0ZXMgRm9yIHNvbWUgb2YgcmVzcG9uc2VzLiBUaGF0J3Mgd2h5IEkgaGFk
IHNldCBpdCB0byAyNDAgYnl0ZXMuDQoNCkhtbS4gIFdlbGwsIHRoYXQgaXMgYSBwcmV0dHkgc2ln
bmlmaWNhbnQgdmlvbGF0aW9uIG9mIHRoZSBzcGVjLCBidXQgdGhlcmUncyBub3RoaW5nIGhhcmQg
aW4gdGhlIHByb3RvY29sIHRoYXQgcHJvaGliaXRzIGl0LCBJIGd1ZXNzLg0KDQpJZiBBc21hYSBp
cyBvayB3aXRoIHRoaXMsIEknbSBvayB3aXRoIGl0LCB0b28uDQoNCi1jb3JleQ0KDQo+ICAgICAN
Cj4gICAgIEknbSBub3Qgc3VyZSB3aGVyZSAxMjggY2FtZSBmcm9tLCBidXQgbWF5YmUgaXQgc2hv
dWxkIGJlIHJlZHVjZWQgdG8gMzEuDQo+ICAgICANCj4gICAgIC1jb3JleQ0KPiAgICAgDQo+ICAg
ICA+IA0KPiAgICAgPiBTaWduZWQtb2ZmLWJ5OiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZi
LmNvbT4NCj4gICAgID4gLS0tDQo+ICAgICA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9p
bnQuYyB8IDIgKy0NCj4gICAgID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiAgICAgPiANCj4gICAgID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9p
cG1pL2lwbWJfZGV2X2ludC5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMNCj4g
ICAgID4gaW5kZXggMjQxOWI5YTkyOGIyLi43ZjkxOThiYmNlOTYgMTAwNjQ0DQo+ICAgICA+IC0t
LSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jDQo+ICAgICA+ICsrKyBiL2RyaXZl
cnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jDQo+ICAgICA+IEBAIC0xOSw3ICsxOSw3IEBADQo+
ICAgICA+ICAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4NCj4gICAgID4gICNpbmNsdWRlIDxs
aW51eC93YWl0Lmg+DQo+ICAgICA+ICANCj4gICAgID4gLSNkZWZpbmUgTUFYX01TR19MRU4JCTEy
OA0KPiAgICAgPiArI2RlZmluZSBNQVhfTVNHX0xFTgkJMjQwDQo+ICAgICA+ICAjZGVmaW5lIElQ
TUJfUkVRVUVTVF9MRU5fTUlOCTcNCj4gICAgID4gICNkZWZpbmUgTkVURk5fUlNQX0JJVF9NQVNL
CTB4NA0KPiAgICAgPiAgI2RlZmluZSBSRVFVRVNUX1FVRVVFX01BWF9MRU4JMjU2DQo+ICAgICA+
IC0tIA0KPiAgICAgPiAyLjE3LjENCj4gICAgID4NCj4gICAgIA0KPiANCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
