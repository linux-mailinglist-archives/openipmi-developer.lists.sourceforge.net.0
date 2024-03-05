Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 405C98724D4
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXzd-0004XB-P0;
	Tue, 05 Mar 2024 16:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXzc-0004Ws-Jt
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dovRBt9U5NuI3RCTptxVbrX7KUA0uYJP4T+WiopUNCM=; b=X5OUbFUQ1qaWbPmzA2Dl2aXt5p
 cwf48jh8xR3YXRZvTMtfLKdUYcyRnVZlYX1L2PPXspbMVFPakvC33ajeRplBOOlGgrmHCTN0D3HIk
 Vbqy9RWTYkFyBSfH89pWCbygUfZZPxh7BwhkpzV+uNLBNcM35jOCyeCu1sFVGGBPMOEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dovRBt9U5NuI3RCTptxVbrX7KUA0uYJP4T+WiopUNCM=; b=fY1a1HcbLPwe+nflsLeltcKT10
 VQiZFoe5/ZeT5RtiereqoazacV0xGIZQAJ61LuYb4ndASvjqUt2EhQ7Uxi0b8ljgDN0iGQxJ755tP
 7GXrJ7yCEyxONBh9H7zs3VzA98ZZIMs6uJ/gVt2UjIOsQiCnkfFP6tSA0d741BVyQceY=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXzV-00057D-Rd for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXde-0003Tc-DX; Tue, 05 Mar 2024 17:27:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-004aQM-4U; Tue, 05 Mar 2024 17:27:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdc-000BLn-0A;
 Tue, 05 Mar 2024 17:27:32 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>,
	Joel Stanley <joel@jms.id.au>
Date: Tue,  5 Mar 2024 17:27:02 +0100
Message-ID: <d125e83788ddc27fc52a3f11b2c329b40cbdd6f9.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1952;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=cQSTkvN0Jy5VD1YUAtbSWuP1fWTL3JuKHCTDHuLZJJg=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fXPuLKdTXmE+BXOgA9dIA30b5KFjtiIciDx
 b+i5br1uiSJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH1wAKCRCPgPtYfRL+
 Ts6bB/9txuPhZrGm/DMvNwP0Qx1oMm+pFrBAHixgtqY+mImxKJZ+IlyxuFi6OXvc0bnE9Y4aj1I
 C0dGPLQKsyemV7eL9A5P9bEdaTYGGNSd8NXp+RM3XtwOEo5nlqlPAM8LO3nnJIbiwbtFF4sxCcB
 gw7wD4fORaKLivqujGWHShxZJQOtT0AiqPwd9M4SNbsmKfdGF0d5SIgrVTCmKci5exR0OqWe6f7
 OUyL9Eya0lk5ZrTZ/GsbMA6stjeCr3iEoUa9A0bLTddKQb7sXy9RQb6LFfNvLTJAwn83RefooK7
 wt4ro9o5G8d5sbCdH04Tds5EkI/ncAymD+MKMpXMdcirftg1
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
X-Headers-End: 1rhXzV-00057D-Rd
Subject: [Openipmi-developer] [PATCH 5/6] ipmi: kcs_bmc_aspeed: Convert to
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
Cc: kernel@pengutronix.de, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
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
ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
aGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNw
ZWVkLmMKaW5kZXggNzI2NDBkYTU1MzgwLi4yMjdiZjA2YzdjYTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMKKysrIGIvZHJpdmVycy9jaGFyL2lwbWkva2Nz
X2JtY19hc3BlZWQuYwpAQCAtNjQxLDcgKzY0MSw3IEBAIHN0YXRpYyBpbnQgYXNwZWVkX2tjc19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0
aWMgaW50IGFzcGVlZF9rY3NfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitz
dGF0aWMgdm9pZCBhc3BlZWRfa2NzX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogewogCXN0cnVjdCBhc3BlZWRfa2NzX2JtYyAqcHJpdiA9IHBsYXRmb3JtX2dldF9kcnZkYXRh
KHBkZXYpOwogCXN0cnVjdCBrY3NfYm1jX2RldmljZSAqa2NzX2JtYyA9ICZwcml2LT5rY3NfYm1j
OwpAQCAtNjU2LDggKzY1Niw2IEBAIHN0YXRpYyBpbnQgYXNwZWVkX2tjc19yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlwcml2LT5vYmUucmVtb3ZlID0gdHJ1ZTsKIAlzcGlu
X3VubG9ja19pcnEoJnByaXYtPm9iZS5sb2NrKTsKIAlkZWxfdGltZXJfc3luYygmcHJpdi0+b2Jl
LnRpbWVyKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBhc3Rfa2NzX2JtY19tYXRjaFtdID0gewpAQCAtNjc0LDcgKzY3Miw3IEBAIHN0YXRpYyBz
dHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGFzdF9rY3NfYm1jX2RyaXZlciA9IHsKIAkJLm9mX21hdGNo
X3RhYmxlID0gYXN0X2tjc19ibWNfbWF0Y2gsCiAJfSwKIAkucHJvYmUgID0gYXNwZWVkX2tjc19w
cm9iZSwKLQkucmVtb3ZlID0gYXNwZWVkX2tjc19yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBhc3Bl
ZWRfa2NzX3JlbW92ZSwKIH07CiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGFzdF9rY3NfYm1jX2Ry
aXZlcik7CiAKLS0gCjIuNDMuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
