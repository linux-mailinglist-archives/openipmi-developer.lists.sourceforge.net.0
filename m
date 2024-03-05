Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C28724D6
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXzq-0005Rk-2s;
	Tue, 05 Mar 2024 16:50:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXzn-0005Rd-Vg
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pa4dwjzPpaUxYXb3Gnu2VXuVVmfJ0nRWPdOqC8Sw5tk=; b=ju26gXodPYlEE3+XAwpFg8TGrL
 7Myjugl/c1Dy/tupgaAzgtGpeFqsXvZcI+Pw1jid4X4OgMc+mT7r6BX+kK3ZbP+OOgEpDYbpWx0Wy
 j8cp8x5rMBIMMatIzTgFQXnHcXCDrPl5gyLwcxzWVT+eWvcT36fpIaX9+JjvWjehr23M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pa4dwjzPpaUxYXb3Gnu2VXuVVmfJ0nRWPdOqC8Sw5tk=; b=GicTsQs5z85OT6O92XfCKndarg
 yw2gTHJw0p2eISmkjxqg9lCmfwOoaze+uieo6pIfepwuR4265xR6i2m8c/O9160buN25qxZByEICG
 3zDtfsnTiUQTH7VdBHKFSGQkRBDp/A+AhFIMQJUQaj3XOVGgVBfGH0CQCmzGI679VlH4=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXzh-000582-RL for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-0003Tu-PZ; Tue, 05 Mar 2024 17:27:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-004aQQ-AU; Tue, 05 Mar 2024 17:27:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdc-000BLr-0j;
 Tue, 05 Mar 2024 17:27:32 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Tali Perry <tali.perry1@gmail.com>, Corey Minyard <minyard@acm.org>
Date: Tue,  5 Mar 2024 17:27:03 +0100
Message-ID: <16144ffaa6f40a1a126d5cf19ef4337218a04fbb.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2011;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=6BojaJx0o86nvxymZyJUgXFT9pCZmy7I6WYLjizDsSQ=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fYrb33YIR2AYYD4oMtv8b+EFdySFh7vvuX8
 zSMz9fCVyeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH2AAKCRCPgPtYfRL+
 TiQSB/9tmMSHdmWxhpT3OAJ3xiZ8KvmE5bdZ7E2LJWyTOayQ0g7WWgO3e9eOJYJTWuvzlcx0sDs
 bUz/JybC7YlfSFM5L7C2f2vWKkXFEwmxivKwybbSHv7gP1tP8TKKTNeRinVSFFbcojXrw83a9zo
 ju8zCM3cyYJjijDiM7fLtADyFxFV25jFakiBC9uSRxGDjXwTdhNwMgTK8vKq9dFO7d7GtjprZ75
 WQ5Pz6ALIHRQ8DaR8aFZ01ZWDo+3w84R+ONj8n7zXC1kkN+aYlkl04TnU1lcvU5IMKq/XUU22fe
 IbAGYqFKoLGTNPKW0PVZlLRJEacyDlAAsmriOgIwvjzpRZpJ
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp;
 fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The .remove() callback for a platform driver returns an int
 which makes many driver authors wrongly assume it's possible to do error
 handling by returning an error code. However the value returned is [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.203.201.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhXzh-000582-RL
Subject: [Openipmi-developer] [PATCH 6/6] ipmi: kcs_bmc_npcm7xx: Convert to
 platform remove callback returning void
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
Cc: Benjamin Fair <benjaminfair@google.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 Nancy Yuen <yuenn@google.com>, kernel@pengutronix.de,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyBpZ25vcmVkIChhcGFydApmcm9tIGVtaXR0aW5n
IGEgd2FybmluZykgYW5kIHRoaXMgdHlwaWNhbGx5IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3Mu
CgpUbyBpbXByb3ZlIGhlcmUgdGhlcmUgaXMgYSBxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2Fs
bGJhY2sgcmV0dXJuCnZvaWQuIEluIHRoZSBmaXJzdCBzdGVwIG9mIHRoaXMgcXVlc3QgYWxsIGRy
aXZlcnMgYXJlIGNvbnZlcnRlZCB0bwoucmVtb3ZlX25ldygpLCB3aGljaCBhbHJlYWR5IHJldHVy
bnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVycwphcmUgY29udmVydGVkLCAucmVt
b3ZlX25ldygpIHdpbGwgYmUgcmVuYW1lZCB0byAucmVtb3ZlKCkuCgpUcml2aWFsbHkgY29udmVy
dCB0aGlzIGRyaXZlciBmcm9tIGFsd2F5cyByZXR1cm5pbmcgemVybyBpbiB0aGUgcmVtb3ZlCmNh
bGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50LgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX25wY203eHguYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y2hhci9pcG1pL2tjc19ibWNfbnBjbTd4eC5jIGIvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19u
cGNtN3h4LmMKaW5kZXggNzk2MWZlYzU2NDc2Li4wNzcxMDE5ODIzM2EgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvY2hhci9pcG1pL2tjc19ibWNfbnBjbTd4eC5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1p
L2tjc19ibWNfbnBjbTd4eC5jCkBAIC0yMTgsNyArMjE4LDcgQEAgc3RhdGljIGludCBucGNtN3h4
X2tjc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogfQog
Ci1zdGF0aWMgaW50IG5wY203eHhfa2NzX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQorc3RhdGljIHZvaWQgbnBjbTd4eF9rY3NfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiB7CiAJc3RydWN0IG5wY203eHhfa2NzX2JtYyAqcHJpdiA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKHBkZXYpOwogCXN0cnVjdCBrY3NfYm1jX2RldmljZSAqa2NzX2JtYyA9ICZwcml2
LT5rY3NfYm1jOwpAQCAtMjI3LDggKzIyNyw2IEBAIHN0YXRpYyBpbnQgbnBjbTd4eF9rY3NfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAKIAlucGNtN3h4X2tjc19lbmFibGVf
Y2hhbm5lbChrY3NfYm1jLCBmYWxzZSk7CiAJbnBjbTd4eF9rY3NfaXJxX21hc2tfdXBkYXRlKGtj
c19ibWMsIChLQ1NfQk1DX0VWRU5UX1RZUEVfSUJGIHwgS0NTX0JNQ19FVkVOVF9UWVBFX09CRSks
IDApOwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IG5wY21fa2NzX2JtY19tYXRjaFtdID0gewpAQCAtMjQzLDcgKzI0MSw3IEBAIHN0YXRpYyBzdHJ1
Y3QgcGxhdGZvcm1fZHJpdmVyIG5wY21fa2NzX2JtY19kcml2ZXIgPSB7CiAJCS5vZl9tYXRjaF90
YWJsZQk9IG5wY21fa2NzX2JtY19tYXRjaCwKIAl9LAogCS5wcm9iZQk9IG5wY203eHhfa2NzX3By
b2JlLAotCS5yZW1vdmUJPSBucGNtN3h4X2tjc19yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBucGNt
N3h4X2tjc19yZW1vdmUsCiB9OwogbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihucGNtX2tjc19ibWNf
ZHJpdmVyKTsKIAotLSAKMi40My4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWkt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
