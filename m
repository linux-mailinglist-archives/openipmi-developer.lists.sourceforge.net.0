Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A156463073C
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Nov 2022 01:29:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1owBjL-00084t-96;
	Sat, 19 Nov 2022 00:29:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1owARt-0006iS-8E
 for openipmi-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 23:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+DKtlG43wJixykhKA262zbLK13vY0Flm0z3laa+YAIE=; b=LNHvN6uyuYUAEhKGUJW3/XR0ty
 rMDDpDAB1WAZwREhW0ig3puLO2FCXhJsA7sEbu64Phkli9NolmrxTxpqhnjYIrsuszuVvs2Puxd8n
 wphH2W5I7QmQQ9d+i1RzzpUotbDFsmMtHljLpbQdvyndqRjpT0N75LoxCkDs8vDqrqXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+DKtlG43wJixykhKA262zbLK13vY0Flm0z3laa+YAIE=; b=FqRAJ28VIEyE6oxLShYaPb2KYD
 OhSXVRP86dLNzTwVy9LgSPAvAcyI1LdcmiVlIhKApIcc5LvpxNv+3BraNOoHgfp1Oux5NegsY9Fkm
 Evy9LSYhiWKHZI5xEoTZTS9SBQ3NN8Muks6noYV8/5xc+2P8qpsssgsmvwqC0EYXOrGE=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owARo-0002nx-8y for openipmi-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 23:07:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1owA9n-0005XP-VF; Fri, 18 Nov 2022 23:48:24 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1owA9k-0058u8-Ng; Fri, 18 Nov 2022 23:48:21 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1owA9k-0000W8-7X; Fri, 18 Nov 2022 23:48:20 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Angel Iglesias <ang.iglesiasg@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Grant Likely <grant.likely@linaro.org>, Wolfram Sang <wsa@kernel.org>,
 Corey Minyard <minyard@acm.org>
Date: Fri, 18 Nov 2022 23:45:39 +0100
Message-Id: <20221118224540.619276-606-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de> The
    probe function doesn't make use of the i2c_device_id * parameter so it can
    be trivially converted. Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
    --- drivers/char/ipmi/ssif_bmc.c | 4 ++-- 1 file changed, 2 insertions(+),
    2 deletions(-) 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
X-Headers-End: 1owARo-0002nx-8y
X-Mailman-Approved-At: Sat, 19 Nov 2022 00:29:10 +0000
Subject: [Openipmi-developer] [PATCH 605/606] ipmi: ssif_bmc: Convert to
 i2c's .probe_new()
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
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClRoZSBwcm9iZSBmdW5jdGlvbiBkb2Vzbid0IG1ha2UgdXNlIG9mIHRoZSBpMmNfZGV2aWNlX2lk
ICogcGFyYW1ldGVyIHNvIGl0CmNhbiBiZSB0cml2aWFsbHkgY29udmVydGVkLgoKU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
LS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y2hhci9pcG1pL3NzaWZfYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9zc2lmX2JtYy5jCmluZGV4
IDJkODA2OTM4NjM5OC4uY2FlZTg0ODI2MWU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2NoYXIvaXBt
aS9zc2lmX2JtYy5jCisrKyBiL2RyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMKQEAgLTc5Nyw3
ICs3OTcsNyBAQCBzdGF0aWMgaW50IHNzaWZfYm1jX2NiKHN0cnVjdCBpMmNfY2xpZW50ICpjbGll
bnQsIGVudW0gaTJjX3NsYXZlX2V2ZW50IGV2ZW50LCB1OAogCXJldHVybiByZXQ7CiB9CiAKLXN0
YXRpYyBpbnQgc3NpZl9ibWNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwgY29uc3Qg
c3RydWN0IGkyY19kZXZpY2VfaWQgKmlkKQorc3RhdGljIGludCBzc2lmX2JtY19wcm9iZShzdHJ1
Y3QgaTJjX2NsaWVudCAqY2xpZW50KQogewogCXN0cnVjdCBzc2lmX2JtY19jdHggKnNzaWZfYm1j
OwogCWludCByZXQ7CkBAIC04NjAsNyArODYwLDcgQEAgc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVy
IHNzaWZfYm1jX2RyaXZlciA9IHsKIAkJLm5hbWUgICAgICAgICAgID0gREVWSUNFX05BTUUsCiAJ
CS5vZl9tYXRjaF90YWJsZSA9IHNzaWZfYm1jX21hdGNoLAogCX0sCi0JLnByb2JlICAgICAgICAg
ID0gc3NpZl9ibWNfcHJvYmUsCisJLnByb2JlX25ldyAgICAgID0gc3NpZl9ibWNfcHJvYmUsCiAJ
LnJlbW92ZSAgICAgICAgID0gc3NpZl9ibWNfcmVtb3ZlLAogCS5pZF90YWJsZSAgICAgICA9IHNz
aWZfYm1jX2lkLAogfTsKLS0gCjIuMzguMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5p
cG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
