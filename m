Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C278CEB6
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Aug 2023 23:23:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qb6BS-0003Om-17;
	Tue, 29 Aug 2023 21:23:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qb6BR-0003Og-6V
 for openipmi-developer@lists.sourceforge.net;
 Tue, 29 Aug 2023 21:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Gfae9W6JZA4FOvTHXMCLsNEnzWLesf3rTGmyrWh/To=; b=OTfiWxj3bXZOS3oZQdLtfar/X3
 kgWUzTDa8uFsWsRj4g6xFQb9FomuVB6Ti2OiBYSyL/vfK9AcfekmW9O/sXbMiLT+FQYcDek/xyoCV
 rUtjbF6pZBwI35/wH4Mkb4Xd4GeV8/0LITiASZHnI8mAc6Ur6DVvqG2BZ8Q7eagjpzjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7Gfae9W6JZA4FOvTHXMCLsNEnzWLesf3rTGmyrWh/To=; b=g
 CF0zhO0Oi2pzYnNfE75RME40AUFst4J9mzeZXkUTyR3L82+GSgcmZPoVuFzvv9RPmQjIIUvbzZy+K
 gJqDLG4pCyS1PsFVjkFNvHjrfzS5oB08Vjj7rYJUeDyAXfCF37Il8rEa8XI7q8s3UjFejToHW3SqW
 Q7570IA/UZmLS1cQ=;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qb6BQ-002l4y-8m for openipmi-developer@lists.sourceforge.net;
 Tue, 29 Aug 2023 21:23:33 +0000
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-3a741f46fadso3411172b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Aug 2023 14:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693344206; x=1693949006; darn=lists.sourceforge.net;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7Gfae9W6JZA4FOvTHXMCLsNEnzWLesf3rTGmyrWh/To=;
 b=jvDQ6d/xfKQlY46y6xPWanXf/D1f+2+d7ll6f8WvGlsNVBsBtp34jZvZ7dNgTD3yD6
 wUrQspHB3u6fKwMBR/fK2g0cHgfFczS3iLAS5RuAt4mfdJGsspLPuBq2GE1ejs6qS78A
 3zMRgqI+HPn0xafuLE+LW/rHsf3lfGeiSEYf+kmFbt9nj9Ts0RkIpxoa+cwxMpgapYB0
 N4RR9US1a7BoHCVj8wrqofV87KOzL0TXpDOpXCnHDjhiWD4m+BYqTNmBer+vH2ArHGL+
 vARhYxMxpe7NEtUQJrfnzqsj+emqi+5+TlpMXr3g8Qc9rjrrYF0DxDx/lEZ7qnxYs86r
 HtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693344206; x=1693949006;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7Gfae9W6JZA4FOvTHXMCLsNEnzWLesf3rTGmyrWh/To=;
 b=Kc2jiMIxGD0JUEJ94Hgj+7ESWFvjOyZ/zNVuClRy1wIGDo+hkquzxqdyDjXb2Mvx0S
 NZrszJ034B25yZ9GOyAjAsZmbzJrR1yqwHVUFW9+ojbCUHF5tjxowZvWs9Ukoi+8toMQ
 CYjhySemr9bVJeqcGgtD7ZjzEPYTIUfeP9P2k6+U4ksXtgSRsMwH7m8NGyqiwsitMZS1
 vaTbnaKffirTUkr9Y7Unfj8KkCI2lCWtkTjdE4NIMarRbV2lXCQ6Ycb3gK+laxGz8T4q
 VepjuTNvmvS23/QwW/Ny8SbGfmQbLkSH57mk8HaunWOdlCqocho7lAP4Eo4ZLKz4FmtH
 y6WA==
X-Gm-Message-State: AOJu0YyJHK93r4wqMc+mL0LygqT+L9QgiUVnha25YN5+8T6O4XCgQ/0j
 tLU6La5DscU92bJFHJNJoN2T1FYwmw==
X-Google-Smtp-Source: AGHT+IGBFDFUXZdwWcfVo+Xsi8rpiyeiRLdKvdNDTmmCT93WswqXtEy1obEfaGpWMo3BUJOyesfmdQ==
X-Received: by 2002:a05:6808:612:b0:3a7:b2a4:1f17 with SMTP id
 y18-20020a056808061200b003a7b2a41f17mr329675oih.3.1693344205296; 
 Tue, 29 Aug 2023 14:23:25 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 bg20-20020a056808179400b003a7a34a4ed8sm4929931oib.33.2023.08.29.14.23.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Aug 2023 14:23:24 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:47c1:5b9e:6495:c84d])
 by serve.minyard.net (Postfix) with ESMTPSA id 14E281800BA;
 Tue, 29 Aug 2023 21:23:24 +0000 (UTC)
Date: Tue, 29 Aug 2023 16:23:22 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZO5hymZPCRLHMMz7@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 4d6d4c7f541d7027beed4fb86eb2c451bd8d6fff:
 Merge tag 'linux-kselftest-fixes-6.4-rc3' of
 git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest
 (2023-05-17 11:16:36 -0700) 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.181 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qb6BQ-002l4y-8m
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.6
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA0ZDZkNGM3ZjU0MWQ3MDI3YmVlZDRm
Yjg2ZWIyYzQ1MWJkOGQ2ZmZmOgoKICBNZXJnZSB0YWcgJ2xpbnV4LWtzZWxmdGVzdC1maXhlcy02
LjQtcmMzJyBvZiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
c2h1YWgvbGludXgta3NlbGZ0ZXN0ICgyMDIzLTA1LTE3IDExOjE2OjM2IC0wNzAwKQoKYXJlIGF2
YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBzOi8vZ2l0aHViLmNvbS9j
bWlueWFyZC9saW51eC1pcG1pLmdpdCB0YWdzL2Zvci1saW51cy02LjYtMQoKZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIGQ0MGYwOWMxYTIzMDI0ZjBlNTUwZDk0MjNmNGQzODk2NzJlMWRm
YWY6CgogIGlwbWlfc2k6IGZpeCAtV3ZvaWQtcG9pbnRlci10by1lbnVtLWNhc3Qgd2FybmluZyAo
MjAyMy0wOC0xNSAxNTo0NjowNiAtMDUwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KTWlub3IgZml4ZXMgZm9yIElQTUkK
CkxvdHMgb2Ygc21hbGwgdW5jb25uZWN0ZWQgdGhpbmdzLCBtZW1vcnkgbGVha3Mgb24gZXJyb3Is
IGEgcG9zc2libGUKKHRob3VnaCB1bmxpa2VseSkgZGVhZGxvY2ssIGNoYW5nZXMgZm9yIHVwZGF0
ZXMgdG8gb3RoZXIgdGhpbmdzCnRoYXQgaGF2ZSBjaGFuZ2VkLiAgTm90aGluZyBlYXJ0aC1zaGF0
dGVyaW5nLCBidXQgdGhpbmdzIHRoYXQgbmVlZAp1cGRhdGUuCgotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkNoZW5nZmVuZyBZ
ZSAoMSk6CiAgICAgIGlwbWk6IGZpeCBwb3RlbnRpYWwgZGVhZGxvY2sgb24gJmtjc19ibWMtPmxv
Y2sKCkNvcmV5IE1pbnlhcmQgKDMpOgogICAgICBpcG1pX3dhdGNoZG9nOiBGaXggcmVhZCBzeXNj
YWxsIG5vdCByZXNwb25kaW5nIHRvIHNpZ25hbHMgZHVyaW5nIHNsZWVwCiAgICAgIGlwbWk6c3Np
ZjogRml4IGEgbWVtb3J5IGxlYWsgd2hlbiBzY2FubmluZyBmb3IgYW4gYWRhcHRlcgogICAgICBp
cG1pOiBDaGFuZ2UgcmVxdWVzdF9tb2R1bGUgdG8gcmVxdWVzdF9tb2R1bGVfbm93YWl0CgpJdmFu
IE9ybG92ICgxKToKICAgICAgaXBtaTogbWFrZSBpcG1pX2NsYXNzIGEgc3RhdGljIGNvbnN0IHN0
cnVjdHVyZQoKSmlhc2hlbmcgSmlhbmcgKDEpOgogICAgICBpcG1pOnNzaWY6IEFkZCBjaGVjayBm
b3Iga3N0cmR1cAoKSnVzdGluIFN0aXR0ICgxKToKICAgICAgaXBtaV9zaTogZml4IC1Xdm9pZC1w
b2ludGVyLXRvLWVudW0tY2FzdCB3YXJuaW5nCgpLcnp5c3p0b2YgS296bG93c2tpICgxKToKICAg
ICAgZHQtYmluZGluZ3M6IGlwbWk6IGFzcGVlZCxhc3QyNDAwLWtjcy1ibWM6IGRyb3AgdW5uZWVk
ZWQgcXVvdGVzCgpVd2UgS2xlaW5lLUvDtm5pZyAoMSk6CiAgICAgIGlwbWk6IFN3aXRjaCBpMmMg
ZHJpdmVycyBiYWNrIHRvIHVzZSAucHJvYmUoKQoKWWkgWWFuZyAoMSk6CiAgICAgIGlwbWlfc2k6
IGZpeCBhIG1lbWxlYWsgaW4gdHJ5X3NtaV9pbml0KCkKCiAuLi4vYmluZGluZ3MvaXBtaS9hc3Bl
ZWQsYXN0MjQwMC1rY3MtYm1jLnlhbWwgICAgICB8ICA4ICsrKystLS0tCiBkcml2ZXJzL2NoYXIv
aXBtaS9pcG1iX2Rldl9pbnQuYyAgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2No
YXIvaXBtaS9pcG1pX2RldmludGYuYyAgICAgICAgICAgICAgICAgICB8IDI0ICsrKysrKysrKysr
LS0tLS0tLS0tLS0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jICAgICAgICAgICAgICAg
ICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jICAgICAgICAg
ICAgICAgICAgIHwgIDUgKysrKysKIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfcGxhdGZvcm0u
YyAgICAgICAgICAgICAgIHwgIDQgKystLQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMg
ICAgICAgICAgICAgICAgICAgICAgfCAxMSArKysrKysrLS0tCiBkcml2ZXJzL2NoYXIvaXBtaS9p
cG1pX3dhdGNoZG9nLmMgICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2NoYXIvaXBt
aS9rY3NfYm1jLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrKy0tCiBkcml2ZXJzL2No
YXIvaXBtaS9zc2lmX2JtYy5jICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCiAxMCBmaWxl
cyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVs
b3Blcgo=
