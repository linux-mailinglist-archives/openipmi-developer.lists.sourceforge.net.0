Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888D7B44E9
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Oct 2023 03:50:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qmlay-000858-1G;
	Sun, 01 Oct 2023 01:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qmlaw-000851-1M
 for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 01:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hNaaq4rSMqxkzwA/AeZucr7Mbvlp9hCuRFZuKzxErOI=; b=bsy/N4y0JzVjYlSoBCz0qGOdfX
 6qxNUxgX98VEyT9SM8vSwFFdufUrrt79ggIijLm/dyZQsfi8HCYSyz+jtz5F/gM4abWyH8/HL9Mxg
 QWubrzd2EaCfHaYIAipl7NCj1AYkCd8LNd2tl0IvbOHYAKiFKdzRVF7n00inzs5QKWtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hNaaq4rSMqxkzwA/AeZucr7Mbvlp9hCuRFZuKzxErOI=; b=Lg9qcG2w5Na2LYDitvhvW03KEM
 2LSXkr0xumovsMv9qkUIeLu0PaIl4TNxTYP55REiHkYFykjQQwhMa76c0+aPBdh+0RmVcNLpurp+m
 w4a8+otYUIFoni2soSLJg2l2GJpSQf+hymVYGiULxz5ahrpvp1TKsdQ0TYFkFmOXa8BQ=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qmlat-00DbxZ-Ec for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Oct 2023 01:50:04 +0000
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-3ae5a014d78so1054723b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 30 Sep 2023 18:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696124994; x=1696729794; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=hNaaq4rSMqxkzwA/AeZucr7Mbvlp9hCuRFZuKzxErOI=;
 b=BLTnbbvOll+N539acxH1CfLOGX3dixc2a3jsARVAvZHN9AYsjoN2y6HdlCod2nMc/Q
 0oA9jN8lEe6gLGrkN4jPjLfULqjSWZIM44mus+QollzOK4wTlVqAMRa0xk45r9Whe7v6
 7M6eY1m918Q4kXip0Yhrf0HwXaI2GvPTPx/UMZKizTSm5TykC+DleLPAHZx+jAyPZ/IK
 sBmyY2dl+hI2SJcVZiVZuWRChHhPPHUG+zAqs+FPTB1USGH9/ZE7NH2YBIQwNkxkYfJj
 FgQHvRjwdWv8a2gEVQBfgd0PF6AxiI++ymZ4TkUjzZk7XJhriLN5sdFos9kpIbG6vySw
 ++ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696124994; x=1696729794;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hNaaq4rSMqxkzwA/AeZucr7Mbvlp9hCuRFZuKzxErOI=;
 b=BvBm4ColpDx7kmXXjtlRh1w9c/5Z9bZ9ER3sb1fPp5C0Pgah4uzXDLYLly7EU60PZt
 V0DnXM6Q3uu+IuF4zUQL2ZKpZsXQ9GC1ReG6c9mKzEh4eiCyGBitGDKQKRhS2OenzR9k
 fbQyXdVFBOTyL5Isa8yNOKE/ItxhSuQisQ6bo8W/+O68qI1wchD20q0tqT9cX83J+1h9
 EcORzP3pGCLl2Cc466H9aOhag0pkOLcMn75SM2TF96y1PIE9w84StQJAOJHZ3TMsfrab
 ahCPUtSfQz6UJf1XZ3Qgrox+lcSU4II1H/kTcdn/r3F6R83IMnN0tIVBv4wDH98wGM+u
 WIdw==
X-Gm-Message-State: AOJu0Yy2LjjjapXs3q12kz8UAMbdxpZRTfKfHI2+hmaJUlyre7le7Hdv
 4++2k93dsknIgV87bLXnhVnw72sSPw==
X-Google-Smtp-Source: AGHT+IHis1K3tU/XcHrZLy8YvbDgLOc74XyzkTqEpz+uk4J8pLw5dRGDYn4R+zU5WkK98b5bJj3kjQ==
X-Received: by 2002:a05:6808:1784:b0:3a0:4a7c:ca4e with SMTP id
 bg4-20020a056808178400b003a04a7cca4emr5722819oib.21.1696124994335; 
 Sat, 30 Sep 2023 18:49:54 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 bf33-20020a056808192100b003af5c2e45a3sm1371379oib.42.2023.09.30.18.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Sep 2023 18:49:53 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1b::30a])
 by serve.minyard.net (Postfix) with ESMTPSA id 7DE6C1800BD;
 Sun,  1 Oct 2023 01:49:52 +0000 (UTC)
Date: Sat, 30 Sep 2023 20:49:51 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZRjQPz3Sba+qH/ZT@mail.minyard.net>
References: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8F8B8A18-6426-4C46-BAFF-F2CD626BA0A5@flyingcircus.io>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, Sep 30, 2023 at 11:14:01PM +0200, Christian Theune
    via Openipmi-developer wrote: > Hi, > > sorry if this isn’t directly a
   developers question, but I’ve run out of avenues after googling an [...]
    
 
 Content analysis details:   (-0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.177 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1qmlat-00DbxZ-Ec
Subject: Re: [Openipmi-developer] SOL via syslog?
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCBTZXAgMzAsIDIwMjMgYXQgMTE6MTQ6MDFQTSArMDIwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+IEhpLAo+IAo+IHNvcnJ5IGlmIHRoaXMg
aXNu4oCZdCBkaXJlY3RseSBhIGRldmVsb3BlcnMgcXVlc3Rpb24sIGJ1dCBJ4oCZdmUgcnVuIG91
dCBvZiBhdmVudWVzIGFmdGVyIGdvb2dsaW5nIGFuZCBsb29raW5nIGFyb3VuZOKApiAKPiAKPiBX
ZeKAmXJlIGV4cGVyaWVuY2luZyB3ZWlyZCBzeXN0ZW0gc3RhYmlsaXR5IGlzc3VlIHdoZXJlIHRo
ZSDigJxsb2cgdG8gU0VM4oCdIGRvZXNu4oCZdCBjdXQgaXQ6IHdlIHNlZSB3YXRjaGRvZyByZWJv
b3RzIGJ1dCBubyBrZXJuZWwgb3V0cHV0IHdoYXRzb2V2ZXIgZW5kaW5nIHVwIGluIHRoZSBTRUwu
IChJ4oCZdmUgZGVidWdnZWQgdGhpcyB3aXRoIENvcmV5IGJlZm9yZSBhbmQgd2UgZm91bmQgc29t
ZXRoaW5nIHRvIGZpeCBidXQgdGhlIHdhdGNoZG9nIGV2ZW50cyB3ZeKAmXJlIGV4cGVyaWVuY2lu
ZyBzdGlsbCBkb27igJl0IGdldCBsb2dnZWQgaW4gbW9yZSBkZXRhaWwuKQoKQ2FuIHlvdSBub3Qg
Z2V0IGtlcm5lbCBjb3JlZHVtcHM/Cgo+IAo+IEnigJltIHdvbmRlcmluZzogZG9lcyBhbnlvbmUg
a25vdyBvZiBhIOKAnHB1c2jigJ0gc29sdXRpb24gdG8gaW5zdHJ1Y3QgdGhlIEJNQyAobW9zdGx5
IFN1cGVybWljcm8gaW4gb3VyIGNhc2UpIHRvIHB1c2ggU09MIG91dHB1dCBwcm9hY3RpdmVseSB0
aHJvdWdoIHNvbWUgcHJvdG9jb2wgbGlrZSBzeXNsb2c/IAoKVGhlIFNFTCBwcm9iYWJseSBpc24n
dCBiaWcgb3IgZmFzdCBlbm91Z2ggdG8gdGFrZSBzeXN0ZW0gbG9ncy4gIFlvdQpjb3VsZCBjcmVh
dGUgc29tZXRoaW5nIGxpa2UgdGhpcyBhcyBwYXJ0IG9mIHByaW50aywgYnV0IEkgc3VzcGVjdCB0
aGF0Cml0IHdvdWxkIHF1aWNrbHkgb3ZlcmZsb3cgdGhlIFNFTC4KCj4gCj4gT3RoZXJ3aXNlIHdl
4oCZZCBuZWVkIHRvIHNldCB1cCBhIGNlbnRyYWwgaG9zdCB3aXRoIHBhc3N3b3JkcyBmb3IgZG96
ZW5zIG9mIGhvc3RzIHRvIHB1bGwgdGhlIFNPTCBmb3IgbG9nZ2luZyBhbmQgdGhhdCBkb2VzbuKA
mXQgZmVlbCByaWdodCBlaXRoZXIg4oCmIC1fXwoKSSBrbm93IHBlb3BsZSB0aGF0IGRvIHRoaXM7
IGl0J3Mgbm90IHRlcnJpYmxlLiAgWW91IGRvIGhhdmUgYWxsIG9mIHlvdXIKSVBNSSBwYXNzd29y
ZHMgaW4gb25lIHBsYWNlLCB0aGF0J3MgdGhlIGJpZ2dlc3QgaXNzdWUsIGJ1dCBJTUhPIHlvdQpz
aG91bGQgYmUgbW9uaXRvcmluZyB0aGUgb3V0cHV0IG9mIHlvdXIgY29uc29sZXMsIGFueXdheS4K
Ckkgc3VwcG9ydCBhIHByb2dyYW0gY2FsbGVkIHNlcjJuZXQgdGhhdCBpcyBjYXBhYmxlIG9mIG1h
a2luZyBTT0wKY29ubmVjdGlvbnMsIGxvZ2dpbmcgdGhlIG91dHB1dCwgYW5kIGFsbG93aW5nIGNv
bm5lY3Rpb25zIHRvIHRoZQpjb25zb2xlLiAgVGhhdCB3b3VsZCBiZSBhIHByZXR0eSBjb21wbGlj
YXRlZCBzZXR1cCwgYnV0IEkgY2FuIGhlbHAgeW91CndpdGggaXQsIGlmIHlvdSBsaWtlLgoKLWNv
cmV5Cgo+IAo+IEdyYXRlZnVsIGZvciBhbnkgaWRlYXMg4oCmIAo+IENocmlzdGlhbgo+IAo+IC0t
IAo+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5
NDAxIDAKPiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczov
L2ZseWluZ2NpcmN1cy5pbwo+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChT
YWFsZSkgwrcgRGV1dHNjaGxhbmQKPiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBHZXNjaMOkZnRz
ZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sKPiAKPiAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IE9wZW5p
cG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
