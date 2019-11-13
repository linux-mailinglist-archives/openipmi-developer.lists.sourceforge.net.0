Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E2FB6A4
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Nov 2019 18:53:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUwpN-0002cv-Vj; Wed, 13 Nov 2019 17:53:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iUwpM-0002co-WD
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 17:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ZBnCoE+i47m0gBvPeT9RgfofqDWYsPkz9dFxkEDpMs=; b=Q+s0x5R6io835F8lz6VHU4vK0B
 5xSJkVSuCveO42NnEbDF+kdj1QTdXpeq80GJQaZaJRs9Ip6r0ZT38wl0d29bmnjnWJcWC+h0Kj5mA
 cJMGPSeqRGw8Iy+Lt/HBcbP6gvSgNrvQKXjebmluUTiu+n8lmiHfYApvBjqfH5IDEN/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+ZBnCoE+i47m0gBvPeT9RgfofqDWYsPkz9dFxkEDpMs=; b=m1s72S7ZNyAKXCV+v8bZdViqkf
 94F0NPrsxFz700GckkzCGhdtnLAvM2k8jimM2RzgT7U/k06xZeN97ueAKZrTOp3EbCdW/b86x/1BD
 xOIfMLSIGLGqiJe84sg+Yil3zP7cCW+HhA4EoHwlw0hujyrYRk5ZvBrs9DfUyaOYpxi8=;
Received: from mail-eopbgr130041.outbound.protection.outlook.com
 ([40.107.13.41] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iUwpH-00FPAG-5t
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 17:53:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+QLFJxMgsT8k332SBeob7mkI9TO9wfUzUoC7h44bmowwLbBr1VobRCJ62r3agjzZoUHd5xW0JC8FULI52Yqjx8X2XsFwZnUWsTFl5I4NsDccBUZPf2TfKMwoyqZiFZ4xLxHmLLulewJRGiLX+Kmrizibtj/GQFy64mxkRt0iqIHo2tyaWf3bFIropIIAapU/sWD36OZ9uNU9ChK2GJB2VARKP4THgy9y3gDMPUZPVlZeUVoerbn4y0mx1NSngDlIux4iqHxGB+Wiii1DP93XmfYLfjMI6CEdwagWbPtoa5mcnCUIvzZUY/CJgAEanEkpUFAv+kVQbhqpojw66pQPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZBnCoE+i47m0gBvPeT9RgfofqDWYsPkz9dFxkEDpMs=;
 b=OGUZjVPRlDpSpXCvp9oqV2QQ1vTgZjcFQXQqgT8GJy9Zw1CVNEpt1BUQ6zpnUG3m+jZkLZf/L4DTeO8J7yJcpsCv5v6ztOh9HgJ4vf8TRJzwVZc+RioDyRn1FgBIOBI2VGjHfB6GKxLHOSi4io0skKfQAIXKF7eASQJ6AgUH08N2pCY+YmBSHs/kVaTw0BN0aRAcN1ivpXVywfVnuZjVdPK7GVBRIjVwnOxcKFSBmeK7OTyxyjPUsKUmriOve8yC5teEGnpjpNxYKDis+hn7Zh0UdQnvodQ+DeXxpMhRyowRwUubEUrhoDbDFtRNoONvafl4j+PRohdgf76Y6TjhXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZBnCoE+i47m0gBvPeT9RgfofqDWYsPkz9dFxkEDpMs=;
 b=m90bbakmG+gbYwPgeVYYJmO7lwQLW1qEIhT1XSyDzKGHWa9/Iprav7HeZ04DufWJmujuDXInt3NFh2lDdDKCk98UAoEbJTLwnGVanA58YP6GSFhp8AwpTEqyiZr7pgcZrYSs60+eNVk8C2qXsp5Gf30T2TgG+akznsFpbQiNmTs=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2472.eurprd05.prod.outlook.com (10.168.77.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 17:52:57 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2430.028; Wed, 13 Nov
 2019 17:52:57 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Vijay Khemka <vijaykhemka@fb.com>, "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [Openipmi-developer] [PATCH 2/2] drivers: ipmi: Modify max
 length of IPMB packet
Thread-Index: AQHVmQJk8sCJH6Uy7E6qy5eNUr7iE6eHfQWAgAB3iACAAAk2AIAABexwgABDM4CAARoZgIAAAvLA
Date: Wed, 13 Nov 2019 17:52:56 +0000
Message-ID: <DB6PR0501MB2712698C135A1195233A9E13DA760@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112023610.3644314-2-vijaykhemka@fb.com>
 <20191112124845.GE2882@minyard.net>
 <7BC487D6-6ACA-46CE-A751-8367FEDEE647@fb.com>
 <20191112202932.GJ2882@minyard.net>
 <DB6PR0501MB27127CF534336BDEB5D005FFDA770@DB6PR0501MB2712.eurprd05.prod.outlook.com>
 <20191113005115.GK2882@minyard.net>
 <C9D94D1B-A992-425E-826F-3BDA98E26999@fb.com>
In-Reply-To: <C9D94D1B-A992-425E-826F-3BDA98E26999@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 668f3540-69f8-4684-2607-08d768625122
x-ms-traffictypediagnostic: DB6PR0501MB2472:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB6PR0501MB2472559580C7FA23FE4DC5CEDA760@DB6PR0501MB2472.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(13464003)(86362001)(25786009)(99286004)(305945005)(74316002)(316002)(486006)(54906003)(110136005)(66066001)(80792005)(81156014)(81166006)(8936002)(7736002)(2501003)(52536014)(8676002)(5660300002)(76116006)(2906002)(256004)(6116002)(66946007)(14444005)(14454004)(102836004)(33656002)(6246003)(966005)(66476007)(6506007)(4326008)(64756008)(66556008)(66446008)(9686003)(71190400001)(446003)(53546011)(476003)(6306002)(229853002)(186003)(76176011)(55016002)(26005)(3846002)(71200400001)(478600001)(6436002)(7696005)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2472;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wJDDwQhTqssh81x+zA1cyRbu2cR8e+l6D7Wq6Mqz/jfxNF2rhJmwrXNqtm6mRwS3RLBuv7z+FB8vvZWrm3mAnWNWsSvbYMRLNlNvs645ELRKt1hFToUl00euI6LSGHXEDpmJ4mz2hRqyDzn1qs125sV/lyEdUPojx9/E0AeaufnLZjIKbGnvtv1roheWrugJQyhwS+t83ziCukbdE9U3BwPtz2osUaZsCNaVXIMvhHCNm67tz1Ibmr6e6XfLbXRKkA9McpZoDftBAYA0zdldGpu8JeHhrvwoBQ0VmoEzY3uD8dqNBXPJAj6cob84RdK3h9a2u2O+8JFpQcjuuqIJfw91OdzvaBrdUNc9li6eyBSQHpULCMS19zkOJm9djeF3IBNMN7Xc1LxdovM0vc+sBx+4rXQBA+f+jPYX++wmzP5gYQf1VUMQ8iaYvlk9yAK+MrtHI5AFv/RmSOIAeP3bVtCuvBk5uAc5D1FJspdGKVk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 668f3540-69f8-4684-2607-08d768625122
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 17:52:57.1391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bJeA4HMpqlEp/tyBQnSDPyrUVDLKMJihnNpzeQ8IbyMJArcJxmzJzvRqVFBIGvsgvi2EYA6QthKWN7wt5TEfIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2472
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUwpH-00FPAG-5t
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

SGkgVmlqYXkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFZpamF5IEtoZW1r
YSA8dmlqYXlraGVta2FAZmIuY29tPiANClNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMTMsIDIw
MTkgMTI6NDEgUE0NClRvOiBtaW55YXJkQGFjbS5vcmc7IEFzbWFhIE1uZWJoaSA8QXNtYWFAbWVs
bGFub3guY29tPg0KQ2M6IGNtaW55YXJkQG12aXN0YS5jb207IFNhaSBEYXNhcmkgPHNkYXNhcmlA
ZmIuY29tPjsgbGludXgtYXNwZWVkQGxpc3RzLm96bGFicy5vcmc7IEFybmQgQmVyZ21hbm4gPGFy
bmRAYXJuZGIuZGU+OyBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24u
b3JnPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgb3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldA0KU3ViamVjdDogUmU6IFtPcGVuaXBtaS1kZXZlbG9wZXJdIFtQ
QVRDSCAyLzJdIGRyaXZlcnM6IGlwbWk6IE1vZGlmeSBtYXggbGVuZ3RoIG9mIElQTUIgcGFja2V0
DQoNCg0KDQrvu79PbiAxMS8xMi8xOSwgNDo1MSBQTSwgIkNvcmV5IE1pbnlhcmQiIDx0Y21pbnlh
cmRAZ21haWwuY29tIG9uIGJlaGFsZiBvZiBtaW55YXJkQGFjbS5vcmc+IHdyb3RlOg0KDQogICAg
T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMTA6MDY6MDBQTSArMDAwMCwgQXNtYWEgTW5lYmhpIHdy
b3RlOg0KICAgID4gQWxzbywgbGV0IG1lIGNsYXJpZnkgb25lIHRoaW5nLiBJdCBkb2Vzbid0IG1h
dHRlciBob3cgYmlnIHRoZSByZXNwb25zZSBpcy4gSW4gbXkgdGVzdGluZywgSSBhbHNvIGhhZCBz
b21lIHJlc3BvbnNlcyB0aGF0IGFyZSBvdmVyIDEyOCBieXRlcywgYW5kIHRoaXMgZHJpdmVyIHN0
aWxsIHdvcmtzLiBJdCBpcyB0aGUgdXNlciBzcGFjZSBwcm9ncmFtIHdoaWNoIGRldGVybWluZXMg
dGhlIGxhc3QgYnl0ZXMgcmVjZWl2ZWQuIFRoZSAxMjggYnl0ZXMgaXMgdGhlIG1heCBudW1iZXIg
b2YgYnl0ZXMgaGFuZGxlZCBieSB5b3VyIGkyYy9zbWJ1cyBkcml2ZXIgYXQgZWFjaCBpMmMgdHJh
bnNhY3Rpb24uIE15IGkyYyBkcml2ZXIgY2FuIG9ubHkgdHJhbnNtaXQgMTI4IGJ5dGVzIGF0IGEg
dGltZS4gU28ganVzdCBsaWtlIENvcmV5IHBvaW50ZWQgb3V0LCBpdCB3b3VsZCBiZSBiZXR0ZXIg
dG8gcGFzcyB0aGlzIHRocm91Z2ggQUNQSS9kZXZpY2UgdHJlZS4NCiAgICANCiAgICBZZWFoLCBJ
IHdvdWxkIHJlYWxseSBwcmVmZXIgZGV2aWNlIHRyZWUuICBUaGF0J3Mgd2hhdCBpdCdzIGRlc2ln
bmVkIGZvciwNCiAgICByZWFsbHkuICBpb2N0bHMgYXJlIG5vdCByZWFsbHkgd2hhdCB5b3Ugd2Fu
dCBmb3IgdGhpcy4gIHN5c2ZzIGlzIGENCiAgICBiZXR0ZXIgY2hvaWNlIGFzIGEgYmFja3VwIGZv
ciBkZXZpY2UgdHJlZSAoc28geW91IGNhbiBjaGFuZ2UgaXQgaWYgaXQncw0KICAgIHdyb25nKS4N
Cg0KQ29yZXkvQXNtYWEsIA0KT2ssIEkgd2lsbCBwYXNzIHRoaXMgbWF4IHNpemUgdGhyb3VnaCBk
ZXZpY2UgdHJlZSBhbmQgY2hhbmdlIHRoaXMgcGF0Y2guIA0KSSBoYXZlIHNlbnQgcGF0Y2ggZm9y
IGkyYyB0cmFuc2ZlciB1c2luZyBpb2N0bCwgSSBob3BlIHRoYXQgc2hvdWxkIGJlIGZpbmUuIA0K
UGxlYXNlIHJldmlldyB0aGF0IHYyIHBhdGNoLg0KICAgIA0KPj4gd2h5IGNhbid0IHlvdSBwYXNz
IHRoaXMgaW5mb3JtYXRpb24gdGhyb3VnaCBkZXZpY2UgdHJlZS9BQ1BJIGFzIHdlbGw/DQpBbGwg
eW91IG5lZWQgaW4geW91ciBEVC9BQ1BJIHRhYmxlIGlzIGEgdmFyaWFibGUgdGhhdCBpbmRpY2F0
ZXMgd2hldGhlciBpdCBpcyBpMmMgb3Igc21idXMuIFlvdSBjaGVjayB0aGF0IHZhcmlhYmxlIGlu
IHRoZSBpcG1iIGRyaXZlciwgdGhlbiBkZWNpZGUgd2hpY2ggY29kZSBwYXRoIHRvIHRha2UuDQpJ
IHByZWZlciBub3QgdG8gdXNlIGlvY3RsIGZvciBzeXN0ZW0gY29uZmlndXJhdGlvbi4NCg0KICAg
IC1jb3JleQ0KICAgIA0KICAgID4gDQogICAgPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
ICAgID4gRnJvbTogQ29yZXkgTWlueWFyZCA8dGNtaW55YXJkQGdtYWlsLmNvbT4gT24gQmVoYWxm
IE9mIENvcmV5IE1pbnlhcmQNCiAgICA+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDEyLCAyMDE5
IDM6MzAgUE0NCiAgICA+IFRvOiBWaWpheSBLaGVta2EgPHZpamF5a2hlbWthQGZiLmNvbT4NCiAg
ICA+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPjsgR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IG9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQ7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGNtaW55YXJkQG12
aXN0YS5jb207IEFzbWFhIE1uZWJoaSA8QXNtYWFAbWVsbGFub3guY29tPjsgam9lbEBqbXMuaWQu
YXU7IGxpbnV4LWFzcGVlZEBsaXN0cy5vemxhYnMub3JnOyBTYWkgRGFzYXJpIDxzZGFzYXJpQGZi
LmNvbT4NCiAgICA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcml2ZXJzOiBpcG1pOiBNb2Rp
ZnkgbWF4IGxlbmd0aCBvZiBJUE1CIHBhY2tldA0KICAgID4gDQogICAgPiBPbiBUdWUsIE5vdiAx
MiwgMjAxOSBhdCAwNzo1NjozNFBNICswMDAwLCBWaWpheSBLaGVta2Egd3JvdGU6DQogICAgPiA+
IA0KICAgID4gPiANCiAgICA+ID4gT24gMTEvMTIvMTksIDQ6NDggQU0sICJDb3JleSBNaW55YXJk
IiA8dGNtaW55YXJkQGdtYWlsLmNvbSBvbiBiZWhhbGYgb2YgbWlueWFyZEBhY20ub3JnPiB3cm90
ZToNCiAgICA+ID4gDQogICAgPiA+ICAgICBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAwNjozNjox
MFBNIC0wODAwLCBWaWpheSBLaGVta2Egd3JvdGU6DQogICAgPiA+ICAgICA+IEFzIHBlciBJUE1C
IHNwZWNpZmljYXRpb24sIG1heGltdW0gcGFja2V0IHNpemUgc3VwcG9ydGVkIGlzIDI1NSwNCiAg
ICA+ID4gICAgID4gbW9kaWZpZWQgTWF4IGxlbmd0aCB0byAyNDAgZnJvbSAxMjggdG8gYWNjb21t
b2RhdGUgbW9yZSBkYXRhLg0KICAgID4gPiAgICAgDQogICAgPiA+ICAgICBJIGNvdWxkbid0IGZp
bmQgdGhpcyBpbiB0aGUgSVBNQiBzcGVjaWZpY2F0aW9uLg0KICAgID4gPiAgICAgDQogICAgPiA+
ICAgICBJSVJDLCB0aGUgbWF4aW11bSBvbiBJMkMgaXMgMzIgYnl0cywgYW5kIHRhYmxlIDYtOSBp
biB0aGUgSVBNSSBzcGVjLA0KICAgID4gPiAgICAgdW5kZXIgIklQTUIgT3V0cHV0IiBzdGF0ZXM6
IFRoZSBJUE1CIHN0YW5kYXJkIG1lc3NhZ2UgbGVuZ3RoIGlzDQogICAgPiA+ICAgICBzcGVjaWZp
ZWQgYXMgMzIgYnl0ZXMsIG1heGltdW0sIGluY2x1ZGluZyBzbGF2ZSBhZGRyZXNzLg0KICAgID4g
PiANCiAgICA+ID4gV2UgYXJlIHVzaW5nIElQTUkgT0VNIG1lc3NhZ2VzIGFuZCBvdXIgcmVzcG9u
c2Ugc2l6ZSBpcyBhcm91bmQgMTUwIA0KICAgID4gPiBieXRlcyBGb3Igc29tZSBvZiByZXNwb25z
ZXMuIFRoYXQncyB3aHkgSSBoYWQgc2V0IGl0IHRvIDI0MCBieXRlcy4NCiAgICA+IA0KICAgID4g
SG1tLiAgV2VsbCwgdGhhdCBpcyBhIHByZXR0eSBzaWduaWZpY2FudCB2aW9sYXRpb24gb2YgdGhl
IHNwZWMsIGJ1dCB0aGVyZSdzIG5vdGhpbmcgaGFyZCBpbiB0aGUgcHJvdG9jb2wgdGhhdCBwcm9o
aWJpdHMgaXQsIEkgZ3Vlc3MuDQogICAgPiANCiAgICA+IElmIEFzbWFhIGlzIG9rIHdpdGggdGhp
cywgSSdtIG9rIHdpdGggaXQsIHRvby4NCiAgICA+IA0KICAgID4gLWNvcmV5DQogICAgPiANCiAg
ICA+ID4gICAgIA0KICAgID4gPiAgICAgSSdtIG5vdCBzdXJlIHdoZXJlIDEyOCBjYW1lIGZyb20s
IGJ1dCBtYXliZSBpdCBzaG91bGQgYmUgcmVkdWNlZCB0byAzMS4NCiAgICA+ID4gICAgIA0KICAg
ID4gPiAgICAgLWNvcmV5DQogICAgPiA+ICAgICANCiAgICA+ID4gICAgID4gDQogICAgPiA+ICAg
ICA+IFNpZ25lZC1vZmYtYnk6IFZpamF5IEtoZW1rYSA8dmlqYXlraGVta2FAZmIuY29tPg0KICAg
ID4gPiAgICAgPiAtLS0NCiAgICA+ID4gICAgID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2
X2ludC5jIHwgMiArLQ0KICAgID4gPiAgICAgPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pDQogICAgPiA+ICAgICA+IA0KICAgID4gPiAgICAgPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMgYi9kcml2ZXJzL2NoYXIvaXBt
aS9pcG1iX2Rldl9pbnQuYw0KICAgID4gPiAgICAgPiBpbmRleCAyNDE5YjlhOTI4YjIuLjdmOTE5
OGJiY2U5NiAxMDA2NDQNCiAgICA+ID4gICAgID4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBt
Yl9kZXZfaW50LmMNCiAgICA+ID4gICAgID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9k
ZXZfaW50LmMNCiAgICA+ID4gICAgID4gQEAgLTE5LDcgKzE5LDcgQEANCiAgICA+ID4gICAgID4g
ICNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPg0KICAgID4gPiAgICAgPiAgI2luY2x1ZGUgPGxp
bnV4L3dhaXQuaD4NCiAgICA+ID4gICAgID4gIA0KICAgID4gPiAgICAgPiAtI2RlZmluZSBNQVhf
TVNHX0xFTgkJMTI4DQogICAgPiA+ICAgICA+ICsjZGVmaW5lIE1BWF9NU0dfTEVOCQkyNDANCiAg
ICA+ID4gICAgID4gICNkZWZpbmUgSVBNQl9SRVFVRVNUX0xFTl9NSU4JNw0KICAgID4gPiAgICAg
PiAgI2RlZmluZSBORVRGTl9SU1BfQklUX01BU0sJMHg0DQogICAgPiA+ICAgICA+ICAjZGVmaW5l
IFJFUVVFU1RfUVVFVUVfTUFYX0xFTgkyNTYNCiAgICA+ID4gICAgID4gLS0gDQogICAgPiA+ICAg
ICA+IDIuMTcuMQ0KICAgID4gPiAgICAgPg0KICAgID4gPiAgICAgDQogICAgPiA+IA0KICAgID4g
DQogICAgPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
ICAgID4gT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdA0KICAgID4gT3BlbmlwbWktZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0KICAgID4gaHR0cHM6Ly91cmxkZWZlbnNlLnBy
b29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19saXN0cy5zb3VyY2Vmb3JnZS5uZXRfbGlz
dHNfbGlzdGluZm9fb3BlbmlwbWktMkRkZXZlbG9wZXImZD1Ed0lEYVEmYz01VkQwUlR0TmxUaDN5
Y2Q0MWIzTVV3JnI9djlNVTBLaTlwV25UWENXd2pIUFZncG5DUjgwdlhra2NySWFxVTdVU2w1ZyZt
PVFGTzVDbEFqWjVLbWZ1cmtoa1JwUVF4eDMzaDBRM05aOWVGUmJSM3ZHeWsmcz1tWlVJeWlWRjF0
QlhPMXY3WmhMV09XX0J3SUVSQlRveXRhVjRVTGpYaGtNJmU9IA0KICAgIA0KDQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVs
b3Blcgo=
