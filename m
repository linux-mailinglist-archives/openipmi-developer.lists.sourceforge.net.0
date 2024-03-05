Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BC48724D1
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:49:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXz4-0005Pm-Nf;
	Tue, 05 Mar 2024 16:49:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXz2-0005Pd-Se
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R2NVBdn9g1lf7LE58J9SX5rmp+iIMd3XW++p4Pj29mM=; b=PmieetZbsJYP99eI/X26p7UFiz
 /Yfp+O/gi52Ff0rGjUP0h8VG6WrH/iuPt6ErufObQRbY4S8YaLekvDpeq0guiQZaTNal3zQzCLB1J
 yrxCIkodNL1BORDHlVX9TDo1mrpttCWiu/METItALiJfroBRumbt6eSzCzCv78GsrA4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R2NVBdn9g1lf7LE58J9SX5rmp+iIMd3XW++p4Pj29mM=; b=lHD1/P9pELjZeQPu+3HS1/pUJT
 uf9L7VSUWAuGprqkSr4ZQQ5OLwvra+ZSLoEfB5HUz0VYI9SVF+kYpYi2SP8Dz7LiMLHCRdGLZ3SfB
 CVFv+gUMXFxF4oW1Q6GUEJEtbtFXskTSFpu8qEVDryga2pf9thHjaXiJoCGLWjh/kxRg=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXyw-00052Q-3U for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:49:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-0003TG-PY; Tue, 05 Mar 2024 17:27:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-004aQC-L8; Tue, 05 Mar 2024 17:27:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdb-000BLb-1o;
 Tue, 05 Mar 2024 17:27:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Date: Tue,  5 Mar 2024 17:26:59 +0100
Message-ID: <22375be2dd616d8ccc2959586a08e49a5ad9e47b.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1784;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=c+JLhSDxkhY7w+LNSmgp+zHARDE2cqnx9VEPDNYMgQ4=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fUAnYGsrZ2HJWCgt9xxz9Xjr2GCv8q5rfPC
 ZxtNRO+SeKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH1AAKCRCPgPtYfRL+
 Tl6/CACp8/Fir0X126Y/o6U8/KCvw0LNLwO8QbNSR4Hl7f47vzPBLyqYoJ/hL7GDEuzt+Td8WDY
 CpG7WOamLVP44W8G1FxDZaAXkoxyjcCD04HJAkPbn2czr83r/OScSgSdnkkpA+Ymwt4dzc9nnN4
 DKbwu9h7sKrfCoG7jgCEjayRG2oOIYL/XA6L2Bwi5O6YWYAqHF5A40Oq0qelcJzqOEI54jvW7zj
 li92X29CVA15C14UEoBOJ212c2VokyfkvIR56sesSnf+lNP4yLTdhcHZdVTSCOOywdEJQgu13L0
 ZEEOqzF++Vg08B3f5jgG9veGSHocezL2VIlLGApIevIw6YOG
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
X-Headers-End: 1rhXyw-00052Q-3U
Subject: [Openipmi-developer] [PATCH 2/6] ipmi: ipmi_powernv: Convert to
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
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>,
 Nicholas Piggin <npiggin@gmail.com>, kernel@pengutronix.de,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
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
ZXJzL2NoYXIvaXBtaS9pcG1pX3Bvd2VybnYuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfcG93ZXJudi5jIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9wb3dlcm52LmMK
aW5kZXggZGEyMmE4Y2JlNjhlLi5jNTlhODZlYjU4YzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2hh
ci9pcG1pL2lwbWlfcG93ZXJudi5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfcG93ZXJu
di5jCkBAIC0yODEsMTUgKzI4MSwxMyBAQCBzdGF0aWMgaW50IGlwbWlfcG93ZXJudl9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiByYzsKIH0KIAotc3RhdGljIGlu
dCBpcG1pX3Bvd2VybnZfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0
aWMgdm9pZCBpcG1pX3Bvd2VybnZfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiB7CiAJc3RydWN0IGlwbWlfc21pX3Bvd2VybnYgKnNtaSA9IGRldl9nZXRfZHJ2ZGF0YSgmcGRl
di0+ZGV2KTsKIAogCWlwbWlfdW5yZWdpc3Rlcl9zbWkoc21pLT5pbnRmKTsKIAlmcmVlX2lycShz
bWktPmlycSwgc21pKTsKIAlpcnFfZGlzcG9zZV9tYXBwaW5nKHNtaS0+aXJxKTsKLQotCXJldHVy
biAwOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpcG1pX3Bvd2VybnZf
bWF0Y2hbXSA9IHsKQEAgLTMwNCw3ICszMDIsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2Ry
aXZlciBwb3dlcm52X2lwbWlfZHJpdmVyID0gewogCQkub2ZfbWF0Y2hfdGFibGUJPSBpcG1pX3Bv
d2VybnZfbWF0Y2gsCiAJfSwKIAkucHJvYmUJPSBpcG1pX3Bvd2VybnZfcHJvYmUsCi0JLnJlbW92
ZQk9IGlwbWlfcG93ZXJudl9yZW1vdmUsCisJLnJlbW92ZV9uZXcgPSBpcG1pX3Bvd2VybnZfcmVt
b3ZlLAogfTsKIAogCi0tIAoyLjQzLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
