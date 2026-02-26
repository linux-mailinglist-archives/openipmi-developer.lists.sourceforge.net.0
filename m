Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBNENmaXoGnhkwQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Feb 2026 19:56:38 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 042161AE115
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Feb 2026 19:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eHYpLsn7sUSxYh0BuMRbOhOfP1LydY20A4bBQ0vB34Y=; b=f+e60hCke6xSJAV2BYBZVN/0cj
	U8s+bvQLPMQSNDdqdK50XkgcPZvlsNSiuTekp7rAV/rs2NEtt/ip0VrRVWvduiSkm1zicgbA1pYa/
	XRn3qk/z7Ja1EtpCETqgEQWvZZsw50qSLybZ6oB0VKny+o6ixkzJ760dbyiEZ+lOhA1s=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vvgXD-0000j9-El;
	Thu, 26 Feb 2026 18:56:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vvgXB-0000is-Pq
 for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Feb 2026 18:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UBXYSnOC9z+pWIe6ka/9gimnWi+XwHqVwTZsi8b9VW8=; b=KqGnpfBePUYxjdN7yPWR3i6YFR
 MZUXeO8Xc6TV2bOnNT9rL9O+I5Koznz3abWCwqB7bbNmW4mz8sHTXyb3o/8nz7yLV8xTIBJCNZTJH
 Ej8utJJSnwXT8LxzN+1NZdURFqtwaEbzi4Z7o4kgTBzm+Rgk6Ndv0EoZf2/VfseW9mIQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UBXYSnOC9z+pWIe6ka/9gimnWi+XwHqVwTZsi8b9VW8=; b=a
 Xaj6Rb0RQnpML5O1WDFcHTDhp8f/2ejlhIbzCiclNXrx4Ux0fO8e+YyTwpsqZX2PdDF03CH0Q8vfe
 KQay5aCXtdQOKBECS76JhjWJomoWQ1CfX6tkSMxk7dI2joupd/SfJBlWYRahQdTcUtTqt+Mt/6hso
 SPVrgMFv0fNRTKSU=;
Received: from mail-dy1-f180.google.com ([74.125.82.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvgXB-0007e5-9l for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Feb 2026 18:56:25 +0000
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2bdbd13ca01so2227920eec.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 26 Feb 2026 10:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1772132175; x=1772736975; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UBXYSnOC9z+pWIe6ka/9gimnWi+XwHqVwTZsi8b9VW8=;
 b=jyyvxlchvs8ie7RdgY3yYYJvFbIyUW2uflEIXvDFwMnbyJY9Ffn7/u/e1owxRXqPls
 6ok4vFGCC2Xlh2KgRuHuxO7u+rIyJI6hY2Xg/LoYEdbNZjix0al9KtOVmkL889GOhSBK
 VfUfmjPzqY83jwQyEy4eTuhUA0wNF+bPpIICsoCh1df+IIFnfiOuibSEuvpI0wzMRY2a
 YmI5DFk9QbvsB+g9ttTmFYQ1N2mKApRmj+sV3xtLx0YNodCzZaur6VuJozMAla7RszgC
 rJQEoq+hfpdiLoSiktZkBe+B1rQJQ9Kvkkh6Z7AJE4Gs0WeDckRkx2Dj0r0EwSMpa3VI
 VuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772132175; x=1772736975;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UBXYSnOC9z+pWIe6ka/9gimnWi+XwHqVwTZsi8b9VW8=;
 b=o6iaeA0j5CxMFP0/myP0nxQKdjHIaIAeRVlymHhwrZH9SkZ1HCStxEKNadngDidTCA
 tL8b8r95a+GFAqwNBY5x8f+ZCzZqSBcQAQLL30BqlnxH/ZAxlrY4/hK99yHyBr/E7/6Z
 exEuhEcmk70jb0DCOigD4aud3gBzZ1pfOmHVD8FtedjlbJL9yNHz5r68o5Fn7tHTD6jb
 oYl2y0Ay4wLz61oBOjUPUfVBxcqCzjcz6Lj+KG+YakPZ0bgDmFJoDAz4NScvE1IvodrF
 T2YJyEqX+lxKqzuLtMHet6SIpkYzA7IUU7JOzqsCwuE4El20a6ebNjar1FSUTlvwaBP0
 s6Mg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHkEVbpkKMZZS8Rd9j9zDA0s+Fa2IW6Qrj8FhFMs/KEG9QuFGDVsYb80doGcL7SWltTBFakDtwLGJxgcwVZJL4DMw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzhCL5/RslWps7OKMEu7EBLzAs5qPw030g/2L/myIlP9pawOUjj
 A/TKHl54bZojue8aX25ueR9sJNqWcu14Eb1FDD3fGFHRhJxDq2VaNS2QN7c+wzRszvLcP6unhC5
 atuFg27Y=
X-Gm-Gg: ATEYQzx+9vpLSMKX7mDQbSYakUYlUJQJfSD55EuKlw6Xa//F5/OSkCVtOCiPag6Lj+z
 nrSYfNiszVbJNAkQS3gzun9GMU0I4ZbZG9nLwnth4cNu/e1KaJuF/4a9BRak+ArycaqE8ekEQgZ
 pmnVkxeujaTDlT8qUMSbUL4GY9sfAO1qmjkLJ/+6KXdUl+yUjxBekjRscj64WFXsjZXgYB2k+De
 bCI3j2qLYkfz5wOsZWnIyVKVwrjKXOwePsar6djtv6RJwpwZIFd0Y00C1z6O/asbo9aLcvMTAuG
 8Vz8kKLHXGgBrC/buDSKLnnzFGALOJdYfuHyT3i5WZkb9g9TikASopMNZEQDzgzhMG6dtsoZMHS
 GkYlWSUgWsdoCtSpx3RHBRq+jcgLGE+gsxiT7ED39G+lVOx85lThs1xHGsctrB3p3KTCU1Kr1u9
 4+EDioBKVPZkRUtxTIOS6k6f9cXq6dLcX7AvQNv6EJADHRJLpQcz1T6Sp6+ZhuvgRh/GxoRhOGe
 g5y1J+yp+fd8kk=
X-Received: by 2002:a05:6820:162b:b0:66e:e441:857f with SMTP id
 006d021491bc7-679faf833a6mr191212eaf.51.1772131696126; 
 Thu, 26 Feb 2026 10:48:16 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:45b6:6cdd:e8b9:b189])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-679f2d9e8d6sm1835451eaf.13.2026.02.26.10.48.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Feb 2026 10:48:15 -0800 (PST)
Date: Thu, 26 Feb 2026 12:48:12 -0600
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aaCVbFXCsGMJmaeq@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 b71e635feefc852405b14620a7fc58c4c80c0f73:
 Merge tag 'cgroup-for-6.19-rc5-fixes' of
 git://git.kernel.org/pub/scm/linux/kernel/git/tj/cgroup
 (2026-01-12 09:56:17 -1000) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vvgXB-0007e5-9l
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.0
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Igor Raits <igor@gooddata.com>,
 Breno Leitao <leitao@debian.org>, openipmi-developer@lists.sourceforge.net,
 Matt Johnston <matt@codeconstruct.com.au>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:rafael@kernel.org,m:linux-kernel@vger.kernel.org,m:igor@gooddata.com,m:leitao@debian.org,m:openipmi-developer@lists.sourceforge.net,m:matt@codeconstruct.com.au,m:linux@roeck-us.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,mail.minyard.net:mid,minyard.net:replyto]
X-Rspamd-Queue-Id: 042161AE115
X-Rspamd-Action: no action

The following changes since commit b71e635feefc852405b14620a7fc58c4c80c0f73:

  Merge tag 'cgroup-for-6.19-rc5-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/tj/cgroup (2026-01-12 09:56:17 -1000)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.0-1

for you to fetch changes up to cae66f1a1dcd23e17da5a015ef9d731129f9d2dd:

  ipmi:si: Fix check for a misbehaving BMC (2026-02-23 09:00:48 -0600)

----------------------------------------------------------------
Bug fixes for the IPMI driver

I apologise for this being late, I wanted to leave it in the next tree
for a while, and the work I did came in late, but I really don't want to
ship 7.0 with these issues.   It's been in the next tree since Feb 13,
and I had to rebase on Feb 23 to add a missed review and to fold in a
fix that didn't make sense by itself.

This mostly revolves around getting the driver to behave when the IPMI
device misbehaves.  Past attempts have not worked very well because I
didn't have hardware I couldmake do this, and AI was fairly useless for
help on this.

So I modified qemu and my test suite so I could reproduce a misbehaving
IPMI device, and with that I was able to fix the issues.

----------------------------------------------------------------
Corey Minyard (8):
      ipmi: Fix use-after-free and list corruption on sender error
      ipmi: Consolidate the run to completion checking for xmit msgs lock
      ipmi:ls2k: Make ipmi_ls2k_platform_driver static
      ipmi:si: Handle waiting messages when BMC failure detected
      ipmi:si: Use a long timeout when the BMC is misbehaving
      ipmi:si: Don't block module unload if the BMC is messed up
      ipmi:msghandler: Handle error returns from the SMI sender
      ipmi:si: Fix check for a misbehaving BMC

Matt Johnston (1):
      ipmi: ipmb: initialise event handler read bytes

 drivers/char/ipmi/ipmi_ipmb.c       |   5 ++
 drivers/char/ipmi/ipmi_msghandler.c | 141 ++++++++++++++++++++++++------------
 drivers/char/ipmi/ipmi_si_intf.c    |  37 ++++++----
 drivers/char/ipmi/ipmi_si_ls2k.c    |   2 +-
 4 files changed, 125 insertions(+), 60 deletions(-)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
