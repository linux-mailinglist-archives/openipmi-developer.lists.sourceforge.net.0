Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z0aNKEwqPGohkwgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 21:04:44 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC84B6C0DAB
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 21:04:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=AzuYLRCU;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=PP+aTsJv;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="D jvz2d/";
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=Ej1ClLHd;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WsseBZmlxyB8hnkO3FGEo1hlkOo+HLS1HSW/JDF1gas=; b=AzuYLRCUTGbotO95lwlZfEJedD
	uFqIGWVszawWC3dM4GLmeOlJFieD5ts3eyBJR+t+Y+/pOGzCjBAvtJT3GXw1S/cHgrtze07F+4NA0
	ybbABAvZ51oSX239QtVMATCO3oE0IFlW2O/jOjt2Mltc6cGq05n3K2bkUXsydqKEQLwU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcStm-0006wG-Kp;
	Wed, 24 Jun 2026 19:04:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wcStl-0006w5-W1
 for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 19:04:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=73HdY/rY9lV+C4woyTgMiavDJH6mrKxo29IeJ4Xg3S8=; b=PP+aTsJvVOg4F4ix2PseTo+yra
 KLdLSTkl7PfE/FkGAiVNfdz+bFOe4Cwutd75Rpf6tydYg3m4+iOyhXdTXG3amJbilXBzkKEcLffaq
 7wHbN7YtppG1K+GmBHDcROlOi/a49+h+l9LZJeAQGx+xm3DTRyoKj101U9kWvwCC9NP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=73HdY/rY9lV+C4woyTgMiavDJH6mrKxo29IeJ4Xg3S8=; b=D
 jvz2d/2a5myNeSjHwvIyN3Nfqagz+QCxjuS9Zc5Ns6QwxCpRHiJgHCnaZW0pqpExNMpxaZ/qLYkuJ
 OdDB2j+92YrVb8576No0jS1t21kY8fpDjkiqQC1gdru977jwNJAOFjjjQKwaRT0Wq9FmG8TfG1lto
 kwkHItzQ7O4sSxsM=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcStl-0005oC-8r for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 19:04:34 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7e93f93ed01so1143000a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jun 2026 12:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782327858; x=1782932658; darn=lists.sourceforge.net;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=73HdY/rY9lV+C4woyTgMiavDJH6mrKxo29IeJ4Xg3S8=;
 b=Ej1ClLHd8XMLSq4F8fXTs7cVwrMwTzLKMbeLXagzPXWTuORJAzRV9GeO5jApsRhOuU
 7ZSEHFJ5c2J3rl4xZpfRawCOqpXdE9ir2b7aXURMvoXJO5NsDDnNxN3Mto2Qr8t9Vfon
 vjv/QxZ/2ip2sH9gzGv/g98ELi1vIA+fB63NyXIY6XImwItoibjVOqsvVqvRDL+D3g0o
 kXg5WjMPp0r/Deh23R/6U5g1onFvxKC2vpZ3+CjFk0duHIczzjmtyZ95X2Q5h5Q/r6is
 iWkg9a22AvGsW+DDL9MfDY8dCyUxO6dczXNRaWA9UQRcZDImf6UuLMmS/AdWjkVsr3wh
 269A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782327858; x=1782932658;
 h=content-transfer-encoding:content-disposition:mime-version:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=73HdY/rY9lV+C4woyTgMiavDJH6mrKxo29IeJ4Xg3S8=;
 b=Kd/587HgKI5/7lZi/A7t6pLGrP+5aigLjuytEohuMtcfIoOAtD3yu1rrAs/GtCcxeb
 w9iz6WhNFIu444lYYKHRY8gYxbnvzQ1NCXh7Jve7RudCDlJrZyx0C6QYb7o7Ap+eZNG9
 KpQ4ijgW1z9b574M0JZ2wAX8Iwoid9IJ42pwR3UheyLyQtHI4rOmj85i0iwvlKuA1ipE
 hAkbZo6Dj9T1veXvl5yNhFUej8z3gZmDaQiXhiABvm5RwMZKtX58othqRd6XANhQHWd5
 RJrUekr3w8QjxI4uqdD8lmWk0buV+5rxvkyku3yDesM9sq+MHB+0yzbr6QHY+o/GPApD
 wFFw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8cagTITXgJztyLjubmPmL7cJLhX65nEg1eBRKFEr8nAxx1y8kjohzjS8iTXfUkIVx0SJsqP/OK1SleQiYGQMQ6t+s=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwOZ8lIre02G/UVn3kydmKh9PI9xpNWQgS0a0JG1U7duDnhmmj1
 p4e08S5heBNaOuiAnid0cIdGCUDOfo1i3NujlBJNuN18BlD7ZOKZqlypfQJ+E4weO8wC36Y4+iV
 GDDJo
X-Gm-Gg: AfdE7ckvZr7H/hNlA9CeQrMCuk/6cskufwgIFRGriqYh3sOLYZJC4htbydNgjVDzUKa
 KYhoivVdfLJa3nSv2hPfpnLeW1UfGY/ROTKV7+p14dr2Oe8QmdLXLQWmunqRzAF7gJk3aO9dckD
 nBMYpe5USU9/47YV1flHF3xbnSrm11OOmVBs+1c3ekRjN1FmJEGAJTHhC3M9ob5k6Tj94+3To8H
 7muiHEci1I8EABNmqU6VUGauoKi6tFDCB9/37jJOwZw6TDXVROrPP5Ru7kM/Ti1+CRtzRABWQ77
 G/DQvhBQt9t2ixdI0lO/XZcTLsHxkD26shq0L6UZxTFsTD3+qmbZrw3PxNzKTEFdEWdU779H3+s
 krCFQURlKnQNN5mGJBv+CbUca2Fiudp4GCvuH68VWPr+G+TzfceW2QE6SWYj9l+RDs2IrTBvQOG
 vyKhH2vJZ8X8opJNAN7uDa+ynFPwrhv4XDd01U8DGPAR9H9rGhgWWSlF+zVC3HhwRvxV2rsbxqP
 rZVsWjpLh+LEnfKwiZZOdKSIBExZtXtHU4=
X-Received: by 2002:a05:6830:668c:b0:7e6:e385:4c15 with SMTP id
 46e09a7af769-7e940b874c9mr20617052a34.20.1782327857712; 
 Wed, 24 Jun 2026 12:04:17 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:53:4df7:8ef0:c11d])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7e94429e0cesm12070253a34.21.2026.06.24.12.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2026 12:04:17 -0700 (PDT)
Date: Wed, 24 Jun 2026 14:04:12 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ajwqLBsdgeK3t9KB@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 ab5fce87a778cb780a05984a2ca448f2b41aafbf:
 Merge tag 'perf-tools-fixes-for-v7.1-2026-05-18' of
 git://git.kernel.org/pub/scm/linux/kernel/git/perf/perf-tools
 (2026-05-18 17:55:42 -0700) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.210.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wcStl-0005oC-8r
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.2
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,minyard.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC84B6C0DAB

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBhYjVmY2U4N2E3NzhjYjc4MGEwNTk4
NGEyY2E0NDhmMmI0MWFhZmJmOgoKICBNZXJnZSB0YWcgJ3BlcmYtdG9vbHMtZml4ZXMtZm9yLXY3
LjEtMjAyNi0wNS0xOCcgb2YgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3BlcmYvcGVyZi10b29scyAoMjAyNi0wNS0xOCAxNzo1NTo0MiAtMDcwMCkKCmFyZSBh
dmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBodHRwczovL2dpdGh1Yi5jb20v
Y21pbnlhcmQvbGludXgtaXBtaS5naXQgdGFncy9mb3ItbGludXMtNy4yLTEKCmZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byBkZTlhYTVlYTJkOWVhNTUyMzRlNzhhZjFlNjE4Mjk3OWFhNGY2
NDZhOgoKICBkb2NzOiBpcG1pOiBGaXggcGF0aCBvZiB0aGUgImhvdG1vZCIgbW9kdWxlIHBhcmFt
ZXRlciAoMjAyNi0wNi0yMCAxMDoyMzowMyAtMDUwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KaXBtaTogbG90cyBvZiBs
aXR0bGUgdHdlYWtzCgpOb3RoaW5nIGh1Z2UsIHRoZSBiaWdnZXN0IGlzc3VlIHdhcyBhIHBvc3Np
YmxlIHJlZmNvdW50IHVuZGVyZmxvdyB0aGF0CmNvdWxkIGNhdXNlIGEgbWVtb3J5IGxlYWsgaW4g
c29tZSBzaXR1YXRpb25zLiAgT3RoZXJ3aXNlLCBmaXhpbmcKZm9ybWF0dGluZyBhbmQgc3R5bGUg
dGhpbmdzIGFuZCBzb21lIGRvY3MgdHlwb3MuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkNvcmV5IE1pbnlhcmQgKDEpOgog
ICAgICBpcG1pOmtjczogUmVkdWNlIHRoZSBudW1iZXIgb2YgcmV0cmllcwoKSmlzaGVuZyBaaGFu
ZyAoMSk6CiAgICAgIGlwbWk6IFVzZSBMSVNUX0hFQUQoKSB0byBpbml0aWFsaXplIG9uIHN0YWNr
IGxpc3QgaGVhZAoKTWF0dCBGbGVtaW5nICgxKToKICAgICAgaXBtaTogRml4IHVzZXIgcmVmY291
bnQgdW5kZXJmbG93IGluIGV2ZW50IGRlbGl2ZXJ5CgpSb3NlbiBQZW5ldiAoMSk6CiAgICAgIGlw
bWk6IHNpOiBVc2UgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHRvIHJldHJpZXZlIGludGVy
cnVwdAoKVXdlIEtsZWluZS1Lw7ZuaWcgKFRoZSBDYXBhYmxlIEh1YikgKDMpOgogICAgICBpcG1p
OiBVc2UgbmFtZWQgaW5pdGlhbGl6ZXJzIGZvciBzdHJ1Y3QgaTJjX2RldmljZV9pZAogICAgICBp
cG1pOnNzaWY6IERyb3AgdW51c2VkIGFzc2lnbm1lbnQgb2YgcGxhdGZvcm1fZGV2aWNlX2lkIGRy
aXZlciBkYXRhCiAgICAgIGlwbWk6IERyb3AgdW51c2VkIGFzc2lnbm1lbnQgb2YgcGxhdGZvcm1f
ZGV2aWNlX2lkIGRyaXZlciBkYXRhCgpXZW50YW8gTGlhbmcgKDEpOgogICAgICBpcG1pOiBmaXgg
cmVmY291bnQgbGVhayBpbiBpX2lwbWlfcmVxdWVzdCgpCgpaZW5naHVpIFl1ICgxKToKICAgICAg
ZG9jczogaXBtaTogRml4IHBhdGggb2YgdGhlICJob3Rtb2QiIG1vZHVsZSBwYXJhbWV0ZXIKCiBE
b2N1bWVudGF0aW9uL2RyaXZlci1hcGkvaXBtaS5yc3QgICAgfCAgMiArLQogZHJpdmVycy9jaGFy
L2lwbWkvaXBtYl9kZXZfaW50LmMgICAgIHwgIDQgKystLQogZHJpdmVycy9jaGFyL2lwbWkvaXBt
aV9pcG1iLmMgICAgICAgIHwgIDQgKystLQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9rY3Nfc20u
YyAgICAgIHwgIDIgKy0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jICB8IDI0
ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9wbGF0
Zm9ybS5jIHwgMTEgKysrKysrKy0tLS0KIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jICAg
ICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvY2hhci9pcG1pL3NzaWZfYm1jLmMgICAgICAgICB8ICAy
ICstCiA4IGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
