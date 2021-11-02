Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0823A442EE6
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 14:12:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhtab-0007GZ-5X; Tue, 02 Nov 2021 13:12:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <clg@kaod.org>) id 1mhtaa-0007GT-G3
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 13:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIP9TXJJyFIUkRZdVG6vQK4kqrUzNTUYfXhUUrU93ws=; b=D1XqBMtQHaW+rP2NYr9Bu5hFGT
 1hE8JaUr+LC6MMWNKA+tvZq+wc6nM7Og8djPNUjLe/1wRa5FKHwFvrDooRwL3Oo1rnyqlL9Cud7Ch
 T+RXO6F4K/v6/9tJ5xMyKxJGHKnHBeO9G9menFD35xvs4ZG4pvJfKkqYGE/IrpVchuZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PIP9TXJJyFIUkRZdVG6vQK4kqrUzNTUYfXhUUrU93ws=; b=QAemD27z+1xdZOD2yxN+xJ3wz1
 QcXvPi9Mve0um9PmmOq4+QlqZcBywQNUo4ue6Bov5k3nssfJpKSxGZCe0M0TKm0F1hvnF2TIuUNte
 tJFYpmApZKrNHKMlndXlIr3pOu5jxFGamT6MC3xw6jsMH6ODAbt4LLzH5MBWspNJ8j90=;
Received: from 8.mo548.mail-out.ovh.net ([46.105.45.231])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhtaY-00EugG-HL
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 13:12:32 +0000
Received: from mxplan5.mail.ovh.net (unknown [10.108.1.72])
 by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 5D66321070;
 Tue,  2 Nov 2021 09:35:49 +0000 (UTC)
Received: from kaod.org (37.59.142.101) by DAG4EX1.mxp5.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.15; Tue, 2 Nov
 2021 10:35:48 +0100
Authentication-Results: garm.ovh; auth=pass
 (GARM-101G004e727d65d-8397-4210-84a7-829b0dd3b7f5,
 5C292F81AE153BA05FA9CE80812C04756C1C1785) smtp.auth=clg@kaod.org
X-OVh-ClientIp: 82.64.250.170
Message-ID: <194999c0-e9b3-1b0d-3739-faa2b7f72391@kaod.org>
Date: Tue, 2 Nov 2021 10:35:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: <jae.hyun.yoo@intel.com>, Rob Herring <robh+dt@kernel.org>, Corey Minyard
 <minyard@acm.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@aj.id.au>, Haiyue Wang <haiyue.wang@linux.intel.com>, Jae Hyun Yoo
 <jae.hyun.yoo@linux.intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-3-jae.hyun.yoo@intel.com>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
In-Reply-To: <20211101233751.49222-3-jae.hyun.yoo@intel.com>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG1EX2.mxp5.local (172.16.2.2) To DAG4EX1.mxp5.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: b52a7976-2078-43c7-9601-4622d6a06c64
X-Ovh-Tracer-Id: 465278140314979317
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvdehhedgtdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfhisehtkeertddtfeejnecuhfhrohhmpeevrogurhhitggpnfgvpgfiohgrthgvrhcuoegtlhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepieegvdffkeegfeetuddttddtveduiefhgeduffekiedtkeekteekhfffleevleelnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtohepohhpvghnihhpmhhiqdguvghvvghlohhpvghrsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/2/21 00:37, jae.hyun.yoo@intel.com wrote: > From: Jae
 Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC BT driver is registered
 ahead of lpc-ctrl module, LPC BT > hardware block will be enabled [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [46.105.45.231 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.45.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mhtaY-00EugG-HL
Subject: Re: [Openipmi-developer] [PATCH -next 2/4] ipmi: bt: add clock
 control logic
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTEvMi8yMSAwMDozNywgamFlLmh5dW4ueW9vQGludGVsLmNvbSB3cm90ZToKPiBGcm9tOiBK
YWUgSHl1biBZb28gPGphZS5oeXVuLnlvb0BsaW51eC5pbnRlbC5jb20+Cj4gCj4gSWYgTFBDIEJU
IGRyaXZlciBpcyByZWdpc3RlcmVkIGFoZWFkIG9mIGxwYy1jdHJsIG1vZHVsZSwgTFBDIEJUCj4g
aGFyZHdhcmUgYmxvY2sgd2lsbCBiZSBlbmFibGVkIHdpdGhvdXQgaGVhcnQgYmVhdGluZyBvZiBM
Q0xLIHVudGlsCj4gbHBjLWN0cmwgZW5hYmxlcyB0aGUgTENMSy4gVGhpcyBpc3N1ZSBjYXVzZXMg
aW1wcm9wZXIgaGFuZGxpbmcgb24KPiBob3N0IGludGVycnVwdHMgd2hlbiB0aGUgaG9zdCBzZW5k
cyBpbnRlcnJ1cHRzIGluIHRoYXQgdGltZSBmcmFtZS4KPiBUaGVuIGtlcm5lbCBldmVudHVhbGx5
IGZvcmNpYmx5IGRpc2FibGVzIHRoZSBpbnRlcnJ1cHQgd2l0aAo+IGR1bXBpbmcgc3RhY2sgYW5k
IHByaW50aW5nIGEgJ25vYm9keSBjYXJlZCB0aGlzIGlycScgbWVzc2FnZSBvdXQuCj4gCj4gVG8g
cHJldmVudCB0aGlzIGlzc3VlLCBhbGwgTFBDIHN1YiBkcml2ZXJzIHNob3VsZCBlbmFibGUgTENM
Swo+IGluZGl2aWR1YWxseSBzbyB0aGlzIHBhdGNoIGFkZHMgY2xvY2sgY29udHJvbCBsb2dpYyBp
bnRvIHRoZSBMUEMKPiBCVCBkcml2ZXIuCj4gCj4gRml4ZXM6IDU0ZjljNGQwNzc4YiAoImlwbWk6
IGFkZCBhbiBBc3BlZWQgQlQgSVBNSSBCTUMgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBKYWUg
SHl1biBZb28gPGphZS5oeXVuLnlvb0BsaW51eC5pbnRlbC5jb20+CgpMR1RNLAoKUmV2aWV3ZWQt
Ynk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+CgpUaGFua3MsCgpDLgoKPiAtLS0K
PiAgIGRyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysr
KystCj4gICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYyBiL2RyaXZlcnMvY2hh
ci9pcG1pL2J0LWJtYy5jCj4gaW5kZXggNzQ1MDkwNGUzMzBhLi5hMjBmOTJjYzdiMTggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvYnQtYm1jLmMKPiArKysgYi9kcml2ZXJzL2NoYXIv
aXBtaS9idC1ibWMuYwo+IEBAIC01LDYgKzUsNyBAQAo+ICAgCj4gICAjaW5jbHVkZSA8bGludXgv
YXRvbWljLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvYnQtYm1jLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9jbGsuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9lcnJuby5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L2ludGVycnVwdC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gQEAgLTYyLDYgKzYzLDcg
QEAgc3RydWN0IGJ0X2JtYyB7Cj4gICAJd2FpdF9xdWV1ZV9oZWFkX3QJcXVldWU7Cj4gICAJc3Ry
dWN0IHRpbWVyX2xpc3QJcG9sbF90aW1lcjsKPiAgIAlzdHJ1Y3QgbXV0ZXgJCW11dGV4Owo+ICsJ
c3RydWN0IGNsawkJKmNsazsKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBhdG9taWNfdCBvcGVuX2Nv
dW50ID0gQVRPTUlDX0lOSVQoMCk7Cj4gQEAgLTQyMyw2ICs0MjUsMTkgQEAgc3RhdGljIGludCBi
dF9ibWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlpZiAoSVNfRVJS
KGJ0X2JtYy0+YmFzZSkpCj4gICAJCXJldHVybiBQVFJfRVJSKGJ0X2JtYy0+YmFzZSk7Cj4gICAK
PiArCWJ0X2JtYy0+Y2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgTlVMTCk7Cj4gKwlpZiAoSVNfRVJS
KGJ0X2JtYy0+Y2xrKSkgewo+ICsJCXJjID0gUFRSX0VSUihidF9ibWMtPmNsayk7Cj4gKwkJaWYg
KHJjICE9IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRldl9lcnIoZGV2LCAiVW5hYmxlIHRvIGdldCBj
bG9ja1xuIik7Cj4gKwkJcmV0dXJuIHJjOwo+ICsJfQo+ICsJcmMgPSBjbGtfcHJlcGFyZV9lbmFi
bGUoYnRfYm1jLT5jbGspOwo+ICsJaWYgKHJjKSB7Cj4gKwkJZGV2X2VycihkZXYsICJVbmFibGUg
dG8gZW5hYmxlIGNsb2NrXG4iKTsKPiArCQlyZXR1cm4gcmM7Cj4gKwl9Cj4gKwo+ICAgCW11dGV4
X2luaXQoJmJ0X2JtYy0+bXV0ZXgpOwo+ICAgCWluaXRfd2FpdHF1ZXVlX2hlYWQoJmJ0X2JtYy0+
cXVldWUpOwo+ICAgCj4gQEAgLTQzMyw3ICs0NDgsNyBAQCBzdGF0aWMgaW50IGJ0X2JtY19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCXJjID0gbWlzY19yZWdpc3Rlcigm
YnRfYm1jLT5taXNjZGV2KTsKPiAgIAlpZiAocmMpIHsKPiAgIAkJZGV2X2VycihkZXYsICJVbmFi
bGUgdG8gcmVnaXN0ZXIgbWlzYyBkZXZpY2VcbiIpOwo+IC0JCXJldHVybiByYzsKPiArCQlnb3Rv
IGVycjsKPiAgIAl9Cj4gICAKPiAgIAlidF9ibWNfY29uZmlnX2lycShidF9ibWMsIHBkZXYpOwo+
IEBAIC00NTcsNiArNDcyLDExIEBAIHN0YXRpYyBpbnQgYnRfYm1jX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJY2xyX2JfYnVzeShidF9ibWMpOwo+ICAgCj4gICAJcmV0
dXJuIDA7Cj4gKwo+ICtlcnI6Cj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUoYnRfYm1jLT5jbGsp
Owo+ICsKPiArCXJldHVybiByYzsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludCBidF9ibWNfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gQEAgLTQ2Niw2ICs0ODYsOCBAQCBz
dGF0aWMgaW50IGJ0X2JtY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
IAltaXNjX2RlcmVnaXN0ZXIoJmJ0X2JtYy0+bWlzY2Rldik7Cj4gICAJaWYgKGJ0X2JtYy0+aXJx
IDwgMCkKPiAgIAkJZGVsX3RpbWVyX3N5bmMoJmJ0X2JtYy0+cG9sbF90aW1lcik7Cj4gKwljbGtf
ZGlzYWJsZV91bnByZXBhcmUoYnRfYm1jLT5jbGspOwo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIH0K
PiAgIAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
