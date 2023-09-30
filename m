Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8981E7B43F2
	for <lists+openipmi-developer@lfdr.de>; Sat, 30 Sep 2023 23:33:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qmhaP-0002sW-Vp;
	Sat, 30 Sep 2023 21:33:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1qmhaO-0002sQ-2a
 for openipmi-developer@lists.sourceforge.net;
 Sat, 30 Sep 2023 21:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u50wJ+elJI1TbjxnqqjSIbYsR1qhBjCn+qhYbfClulw=; b=kmJSVrmiYEy16y+hassYlYEd/y
 3j8gJpuQPMdwapsugh8LNtpMiXUZ21Kuc9tcxLsCloHqa/LxrxA7kvUOGkL/MglfoTBA7oe73D9E/
 eUnNIwz7tv2HRk0iLXDlRzlPKCwfaOkHrn5/AktH4OaVRC+RlsMJPjTqU0OadFsAwNqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u50wJ+elJI1TbjxnqqjSIbYsR1qhBjCn+qhYbfClulw=; b=G6LSdZpX4p3KhqGPg/9KNoJj/O
 YmtUTUfs51ovWy+mEDdIP0wNrtJrZEgi2tInvqcCCLoiLGJO7KvY/1QZOXomTu8M0uF8Z0HL0JIof
 L0nUlC/flNqoPI2m8duh9kAuIWTzGQKrzMhshJUqMpBdXp8rKsgJNyJGrEmgXUZiqkS0=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qmhaH-00014c-33 for openipmi-developer@lists.sourceforge.net;
 Sat, 30 Sep 2023 21:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1696108461;
 bh=u50wJ+elJI1TbjxnqqjSIbYsR1qhBjCn+qhYbfClulw=;
 h=From:Subject:Date:To;
 b=SM+7struQ5sRzgnL89rJVvZd7x/rKkpDRYRpRjqsNiY2auLnv7CTYsxqVItRZ0WOf
 PJObfIa1QQjawoFs5Hc4VU/ThpsFKue9f08I4lZ0Am9Hpxf0sD3kWNgh223pctJh2s
 Q3mgSqikcJMj89c3ctErYPfIVYw6a65XQKHNXpZA=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Message-Id: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
Date: Sat, 30 Sep 2023 23:14:01 +0200
To: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, sorry if this isn’t directly a developers question,
   but I’ve run out of avenues after googling and looking around… We’re
    experiencing weird system stability issue where the “log to SEL” doesn’t
    cut it: we see watchdog reboots but no kernel output whatsoever ending up
    in the SEL. (I’ve debugged this with [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1qmhaH-00014c-33
Subject: [Openipmi-developer] SOL via syslog?
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgpzb3JyeSBpZiB0aGlzIGlzbuKAmXQgZGlyZWN0bHkgYSBkZXZlbG9wZXJzIHF1ZXN0aW9u
LCBidXQgSeKAmXZlIHJ1biBvdXQgb2YgYXZlbnVlcyBhZnRlciBnb29nbGluZyBhbmQgbG9va2lu
ZyBhcm91bmTigKYgCgpXZeKAmXJlIGV4cGVyaWVuY2luZyB3ZWlyZCBzeXN0ZW0gc3RhYmlsaXR5
IGlzc3VlIHdoZXJlIHRoZSDigJxsb2cgdG8gU0VM4oCdIGRvZXNu4oCZdCBjdXQgaXQ6IHdlIHNl
ZSB3YXRjaGRvZyByZWJvb3RzIGJ1dCBubyBrZXJuZWwgb3V0cHV0IHdoYXRzb2V2ZXIgZW5kaW5n
IHVwIGluIHRoZSBTRUwuIChJ4oCZdmUgZGVidWdnZWQgdGhpcyB3aXRoIENvcmV5IGJlZm9yZSBh
bmQgd2UgZm91bmQgc29tZXRoaW5nIHRvIGZpeCBidXQgdGhlIHdhdGNoZG9nIGV2ZW50cyB3ZeKA
mXJlIGV4cGVyaWVuY2luZyBzdGlsbCBkb27igJl0IGdldCBsb2dnZWQgaW4gbW9yZSBkZXRhaWwu
KQoKSeKAmW0gd29uZGVyaW5nOiBkb2VzIGFueW9uZSBrbm93IG9mIGEg4oCccHVzaOKAnSBzb2x1
dGlvbiB0byBpbnN0cnVjdCB0aGUgQk1DIChtb3N0bHkgU3VwZXJtaWNybyBpbiBvdXIgY2FzZSkg
dG8gcHVzaCBTT0wgb3V0cHV0IHByb2FjdGl2ZWx5IHRocm91Z2ggc29tZSBwcm90b2NvbCBsaWtl
IHN5c2xvZz8gCgpPdGhlcndpc2Ugd2XigJlkIG5lZWQgdG8gc2V0IHVwIGEgY2VudHJhbCBob3N0
IHdpdGggcGFzc3dvcmRzIGZvciBkb3plbnMgb2YgaG9zdHMgdG8gcHVsbCB0aGUgU09MIGZvciBs
b2dnaW5nIGFuZCB0aGF0IGRvZXNu4oCZdCBmZWVsIHJpZ2h0IGVpdGhlciDigKYgLV9fCgpHcmF0
ZWZ1bCBmb3IgYW55IGlkZWFzIOKApiAKQ2hyaXN0aWFuCgotLSAKQ2hyaXN0aWFuIFRoZXVuZSDC
tyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMApGbHlpbmcgQ2lyY3VzIElu
dGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwpMZWlwemln
ZXIgU3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCkhSIFN0
ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBD
aHJpc3RpYW4gWmFncm9kbmljawoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
