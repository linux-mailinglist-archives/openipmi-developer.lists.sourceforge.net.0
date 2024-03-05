Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5038724D3
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Mar 2024 17:50:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rhXzR-0000Hi-II;
	Tue, 05 Mar 2024 16:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1rhXzP-0000Ha-Sx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ob320IVFZ1ikxTM9ux94tzwmnKmGYgUdNYEcsCV2gyU=; b=V4jZi1Tv953TvrldU5qzKkJv8i
 26Ik25FRHvpjW+7E9ZnjgHbXLNX7Xt5/MSvdDrdm727HkP4O0ApxKAyeVzwJxAptXUz+BzgBsSyZ/
 lMslEzHbXaj5yx+TLg+1vSDEV4bS+Kpy8yTGsghP2NxeOmHtLRC9rPYcIp5XPJCPlJLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ob320IVFZ1ikxTM9ux94tzwmnKmGYgUdNYEcsCV2gyU=; b=H4AocpQeARCnPSJbW8EN1EF1aM
 B//85+v/cW52TktecAPmZrU3VN556gct2/v6fEFazB769TEg2JDQkIy6EQw0X3eXXD25HbjN1uM53
 Fc9BCOV6Oe4S8qIVslks4lnetLVHemA8+Hh6iZCvaIDnd+n6Vy0JgWGlL31dlIXGbab8=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhXzJ-00054c-Up for openipmi-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 16:50:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdc-0003TN-6y; Tue, 05 Mar 2024 17:27:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1rhXdb-004aQF-QE; Tue, 05 Mar 2024 17:27:31 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1rhXdb-000BLf-2M;
 Tue, 05 Mar 2024 17:27:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Date: Tue,  5 Mar 2024 17:27:00 +0100
Message-ID: <789cd7876780241430dd5604bc4322453fe4e581.1709655755.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1695;
 i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id;
 bh=doYdhTXzvURQUMq+/55HI8wRrXRIIdD9gYXdjJWEGcI=;
 b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl50fV30vujbJ09mbhanHRImF78/UgI9V1mrBs/
 hNZlzsB9KyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZedH1QAKCRCPgPtYfRL+
 TvhRB/sFT4OUj1vJrq/2TiWx/G0Vh1GpZmo6Q4G0Zzg9luIKTsLWtnp0Uyqme+2gTUZ1BdXbXbL
 GkeuhAECXs0T9xj1Hkj4VkI0aL/LdCZLgxq0eNdoEX30Ob4hLrXX8wvbKeGaq1BR3Xd0zKaq7Qm
 m0lAypkqkm23Mspk4BaWgqkOOCKcuuQC+HICuddsoC0ZanViK74D9OUPFyky2JITeUy90qBk8D8
 WEnon02RlLtYQwn82hRxzHi9F/DqQUQAikS7dD+gV5qgH40Aadr3h9nRYlsSv3n6DYuPUV2nYyh
 p4gqudy2ZPpX7HKXiF6+Ys39/PDt9wcXN5Ck/tSEZ7cGW0FS
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
X-Headers-End: 1rhXzJ-00054c-Up
Subject: [Openipmi-developer] [PATCH 3/6] ipmi: ipmi_si_platform: Convert to
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
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
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
ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3Np
X3BsYXRmb3JtLmMKaW5kZXggY2QyZWRkOGY4YTAzLi45NmJhODU2NDgxMjAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0uYworKysgYi9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX3NpX3BsYXRmb3JtLmMKQEAgLTQwNSwxMSArNDA1LDkgQEAgc3RhdGljIGludCBp
cG1pX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIHBsYXRmb3Jt
X2lwbWlfcHJvYmUocGRldik7CiB9CiAKLXN0YXRpYyBpbnQgaXBtaV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2b2lkIGlwbWlfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJaXBtaV9zaV9yZW1vdmVfYnlfZGV2KCZwZGV2LT5kZXYp
OwotCi0JcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgcGRldl9tYXRjaF9uYW1lKHN0cnVjdCBk
ZXZpY2UgKmRldiwgY29uc3Qgdm9pZCAqZGF0YSkKQEAgLTQ0Nyw3ICs0NDUsNyBAQCBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIGlwbWlfcGxhdGZvcm1fZHJpdmVyID0gewogCQkuYWNwaV9tYXRjaF90
YWJsZSA9IEFDUElfUFRSKGFjcGlfaXBtaV9tYXRjaCksCiAJfSwKIAkucHJvYmUJCT0gaXBtaV9w
cm9iZSwKLQkucmVtb3ZlCQk9IGlwbWlfcmVtb3ZlLAorCS5yZW1vdmVfbmV3CT0gaXBtaV9yZW1v
dmUsCiAJLmlkX3RhYmxlICAgICAgID0gc2lfcGxhdF9pZHMKIH07CiAKLS0gCjIuNDMuMAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Blbmlw
bWktZGV2ZWxvcGVyCg==
