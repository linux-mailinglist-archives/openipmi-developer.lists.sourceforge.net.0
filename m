Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1F5449BD8
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 19:42:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk9bG-0002kj-Pu; Mon, 08 Nov 2021 18:42:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mk9bE-0002kU-QS
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A0XSMYgAdmY8SHScPO4kXy0r7mybqZI/ywg59MgdSFw=; b=Y/ksovAfOhwwlMNR+XpuXcsF7m
 VN/QSi1nbZMjiBDYJ6PIdOO7eogc1pVmCGiG3weGYFhxFLZvRJKdNfBuklh/oWB5wHg67K0fB9XK0
 W7fy+8QI9+tNYl4e8ac5PS5KV6ANLLe5PPMusSEIh/SCylQHM/6OMIsvrjSbSYx2DDpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A0XSMYgAdmY8SHScPO4kXy0r7mybqZI/ywg59MgdSFw=; b=ijJilImyKnyQdMua3Fex0UdpI9
 8ouCRFtKBlK1DBfdK1cAeysYVWIralboa4pFKv0ZGjDkfsg72YcmkJ76UeRl70KkounUNs9qtCxQL
 raWZsTKkXvI0FSFvofDJXU5QljdHtGX7NFj/rr6l+jgdxerjAn52GCYCUyRhJ/zoMpOQ=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk9bD-006NCz-L6
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:42:32 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="318500272"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="318500272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 10:42:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="503150689"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga008.jf.intel.com with ESMTP; 08 Nov 2021 10:42:20 -0800
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Mon,  8 Nov 2021 11:01:57 -0800
Message-Id: <20211108190200.290957-4-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
References: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> If LPC BT
 driver is registered ahead of lpc-ctrl module, LPC BT hardware block will
 be enabled without heart beating of LCLK until lpc-ctrl enables the LCLK.
 This issue causes improper handling on hos [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mk9bD-006NCz-L6
Subject: [Openipmi-developer] [PATCH v3 3/6] ipmi: bt: add clock control
 logic
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RnJvbTogSmFlIEh5dW4gWW9vIDxqYWUuaHl1bi55b29AbGludXguaW50ZWwuY29tPgoKSWYgTFBD
IEJUIGRyaXZlciBpcyByZWdpc3RlcmVkIGFoZWFkIG9mIGxwYy1jdHJsIG1vZHVsZSwgTFBDIEJU
CmhhcmR3YXJlIGJsb2NrIHdpbGwgYmUgZW5hYmxlZCB3aXRob3V0IGhlYXJ0IGJlYXRpbmcgb2Yg
TENMSyB1bnRpbApscGMtY3RybCBlbmFibGVzIHRoZSBMQ0xLLiBUaGlzIGlzc3VlIGNhdXNlcyBp
bXByb3BlciBoYW5kbGluZyBvbgpob3N0IGludGVycnVwdHMgd2hlbiB0aGUgaG9zdCBzZW5kcyBp
bnRlcnJ1cHRzIGluIHRoYXQgdGltZSBmcmFtZS4KVGhlbiBrZXJuZWwgZXZlbnR1YWxseSBmb3Jj
aWJseSBkaXNhYmxlcyB0aGUgaW50ZXJydXB0IHdpdGgKZHVtcGluZyBzdGFjayBhbmQgcHJpbnRp
bmcgYSAnbm9ib2R5IGNhcmVkIHRoaXMgaXJxJyBtZXNzYWdlIG91dC4KClRvIHByZXZlbnQgdGhp
cyBpc3N1ZSwgYWxsIExQQyBzdWIgZHJpdmVycyBzaG91bGQgZW5hYmxlIExDTEsKaW5kaXZpZHVh
bGx5IHNvIHRoaXMgcGF0Y2ggYWRkcyBjbG9jayBjb250cm9sIGxvZ2ljIGludG8gdGhlIExQQwpC
VCBkcml2ZXIuCgpOb3RlOiBkdHNpIGNoYW5nZSBpbiB0aGlzIHBhdGNoIHNlcmllcyBzaG91bGQg
YmUgYXBwbGllZCBhbG9uZyB3aXRoLAphbmQgZHRicyBzaG91bGQgYmUgcmUtY29tcGlsZWQgYWZ0
ZXIgYXBwbHlpbmcgdGhpcyBzZXJpZXMgc2luY2UKaXQncyBhZGRpbmcgYSBuZXcgcmVxdWlyZWQg
cHJvcGVydHkgb3RoZXJ3aXNlIHRoaXMgZHJpdmVyIHdpbGwgbm90CmJlIHByb2JlZCBjb3JyZWN0
bHkuCgpGaXhlczogNTRmOWM0ZDA3NzhiICgiaXBtaTogYWRkIGFuIEFzcGVlZCBCVCBJUE1JIEJN
QyBkcml2ZXIiKQpTaWduZWQtb2ZmLWJ5OiBKYWUgSHl1biBZb28gPGphZS5oeXVuLnlvb0BsaW51
eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1PgpS
ZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KUmV2aWV3ZWQtYnk6
IEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+Ci0tLQp2MiAtPiB2MzoKICogU2ltcGxp
ZmllZCB0aGUgLUVQUk9CRV9ERUZFUiBoYW5kbGluZyB1c2luZyBkZXZfZXJyX3Byb2JlKCkuCgp2
MSAtPiB2MjoKICogTm8gY2hhbmdlLgoKIGRyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jIHwgMjEg
KysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jIGIv
ZHJpdmVycy9jaGFyL2lwbWkvYnQtYm1jLmMKaW5kZXggNzQ1MDkwNGUzMzBhLi5mNjU0N2RkZDcy
ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jCisrKyBiL2RyaXZlcnMv
Y2hhci9pcG1pL2J0LWJtYy5jCkBAIC01LDYgKzUsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvYXRv
bWljLmg+CiAjaW5jbHVkZSA8bGludXgvYnQtYm1jLmg+CisjaW5jbHVkZSA8bGludXgvY2xrLmg+
CiAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KICNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4K
ICNpbmNsdWRlIDxsaW51eC9pby5oPgpAQCAtNjIsNiArNjMsNyBAQCBzdHJ1Y3QgYnRfYm1jIHsK
IAl3YWl0X3F1ZXVlX2hlYWRfdAlxdWV1ZTsKIAlzdHJ1Y3QgdGltZXJfbGlzdAlwb2xsX3RpbWVy
OwogCXN0cnVjdCBtdXRleAkJbXV0ZXg7CisJc3RydWN0IGNsawkJKmNsazsKIH07CiAKIHN0YXRp
YyBhdG9taWNfdCBvcGVuX2NvdW50ID0gQVRPTUlDX0lOSVQoMCk7CkBAIC00MjMsNiArNDI1LDE2
IEBAIHN0YXRpYyBpbnQgYnRfYm1jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJaWYgKElTX0VSUihidF9ibWMtPmJhc2UpKQogCQlyZXR1cm4gUFRSX0VSUihidF9ibWMtPmJh
c2UpOwogCisJYnRfYm1jLT5jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCBOVUxMKTsKKwlpZiAoSVNf
RVJSKGJ0X2JtYy0+Y2xrKSkKKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGJ0
X2JtYy0+Y2xrKSwKKwkJCQkgICAgICJVbmFibGUgdG8gZ2V0IGNsb2NrXG4iKTsKKwlyYyA9IGNs
a19wcmVwYXJlX2VuYWJsZShidF9ibWMtPmNsayk7CisJaWYgKHJjKSB7CisJCWRldl9lcnIoZGV2
LCAiVW5hYmxlIHRvIGVuYWJsZSBjbG9ja1xuIik7CisJCXJldHVybiByYzsKKwl9CisKIAltdXRl
eF9pbml0KCZidF9ibWMtPm11dGV4KTsKIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZidF9ibWMtPnF1
ZXVlKTsKIApAQCAtNDMzLDcgKzQ0NSw3IEBAIHN0YXRpYyBpbnQgYnRfYm1jX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmMgPSBtaXNjX3JlZ2lzdGVyKCZidF9ibWMtPm1p
c2NkZXYpOwogCWlmIChyYykgewogCQlkZXZfZXJyKGRldiwgIlVuYWJsZSB0byByZWdpc3RlciBt
aXNjIGRldmljZVxuIik7Ci0JCXJldHVybiByYzsKKwkJZ290byBlcnI7CiAJfQogCiAJYnRfYm1j
X2NvbmZpZ19pcnEoYnRfYm1jLCBwZGV2KTsKQEAgLTQ1Nyw2ICs0NjksMTEgQEAgc3RhdGljIGlu
dCBidF9ibWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAljbHJfYl9idXN5
KGJ0X2JtYyk7CiAKIAlyZXR1cm4gMDsKKworZXJyOgorCWNsa19kaXNhYmxlX3VucHJlcGFyZShi
dF9ibWMtPmNsayk7CisKKwlyZXR1cm4gcmM7CiB9CiAKIHN0YXRpYyBpbnQgYnRfYm1jX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQpAQCAtNDY2LDYgKzQ4Myw4IEBAIHN0YXRp
YyBpbnQgYnRfYm1jX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCW1pc2Nf
ZGVyZWdpc3RlcigmYnRfYm1jLT5taXNjZGV2KTsKIAlpZiAoYnRfYm1jLT5pcnEgPCAwKQogCQlk
ZWxfdGltZXJfc3luYygmYnRfYm1jLT5wb2xsX3RpbWVyKTsKKwljbGtfZGlzYWJsZV91bnByZXBh
cmUoYnRfYm1jLT5jbGspOworCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjUuMQoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
