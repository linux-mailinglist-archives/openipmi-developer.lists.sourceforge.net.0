Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BECB4AEF841
	for <lists+openipmi-developer@lfdr.de>; Tue,  1 Jul 2025 14:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:References:Mime-Version:
	In-Reply-To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kkzeCxgEAqX9fvCJQJ82NiuO+xUD/dGUZsafBG9fnho=; b=YViiME/79S4zECrLL66J7PfGcg
	AsH2SksSErdHKL1nqdecYQXDf1+qGU/l+CcX80k4+5FwmDrT0EPEw17pPqZLpYvGuOxLVfR8RiKWS
	//7CugCTV5nDvVebnYCMxCeSmIef+qaAe1yP9S/qnmKNUCbulMrHjyJX9TgWcYzhyraE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWa0v-0003TW-AB;
	Tue, 01 Jul 2025 12:23:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ucZjaAgKACAF68GI6J7CKKCHA.8KI@flex--jackmanb.bounces.google.com>)
 id 1uWZaJ-000844-Rw for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 11:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 References:Mime-Version:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nY2MChASwYPFQeeJZJw/kzZhoLPwcfZ0+qyLebAdBf4=; b=mULxTejSMmvCINQWsnXg2XnWIO
 /504NWJA2UQgRbkvA9bNCS88Z9cTdAete+4vtF1+CzJwO2L8K7fkdBoNVzQc06/YJ1bJ249EMtFg3
 76dZCNoWEpe2Ep/V+T7T8SCoZQ9oiE0O5VCAlcoBcdwYURDtbDOWIOMg8QJLz6g15Ib0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:References:Mime-Version:
 In-Reply-To:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nY2MChASwYPFQeeJZJw/kzZhoLPwcfZ0+qyLebAdBf4=; b=ItecFvaxrLibmyQHLnuGMtunI3
 m4H7V0kS9VZdT7a6Xbl5cDSwZrKQA9T2tyNhyVModcr8wYDAGiF+JH4z/HtjE3JZkFh98d3QC7c0x
 3GEjFSGFhFbJBqCvowbNZUCxFM1InWI1g/D+THZ6n5keKspl1JiD3xK+iLTZWgIpL20U=;
Received: from mail-lj1-f202.google.com ([209.85.208.202])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uWZaJ-0007xr-EZ for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 11:55:35 +0000
Received: by mail-lj1-f202.google.com with SMTP id
 38308e7fff4ca-32add2506abso14826311fa.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 01 Jul 2025 04:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751370924; x=1751975724;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=nY2MChASwYPFQeeJZJw/kzZhoLPwcfZ0+qyLebAdBf4=;
 b=x2EwJJP2ELi7ncFZezotmQ80yKpP430zJsqbrR87XxrnmZ1s1529hBMod8Jl/xftUR
 wGWPsDtjU87u+bRVF3E0ykWDn6RnSWkojxi90qGLxi9RuabA7xttIeGX5sINxT4zGmYH
 IIpM2DF2JcDxRd4uRG6HGNzBWIw3Lt/JvcMtj5dLU+d4KuTXDwW+Uzwtwcs3GzzDqAdG
 e0G5cUPs9btLSNElXAbi/HNj2melWqTarwGIO8tP6eOsi4DWhRysFSZHPeSMMsyaDPbZ
 dJOm1dryvcj0TOoQTShHscfEs2U6EgmSN8Su4D6PahNcjpWEY60ctADo/TzAlLg4oOWh
 dQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751370924; x=1751975724;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nY2MChASwYPFQeeJZJw/kzZhoLPwcfZ0+qyLebAdBf4=;
 b=FOtWmDQDtTNbPkfRnfocD5pDfhSNDaI9ihOqa24u/E7XT/7O2GMbLUCU8js3jFCgbB
 5i+94yz9R3xIlHsjPmz5cDi5vbwk8RIRCfrONZfLV1FmxGJn4Dx/D5ArDs1BbKt8kIT8
 Q/Y1DVuqyZIkMBqoGDTEmgjOLCUQxYP2vCOEnwFll2JglLnmZrYQW620g5fg48qV05tw
 oD6WkU7UEFRQt1zWgrt/dVwn4cZZmdmKXmv/3pcdEQnUtYatWJoby9j7gGWpMMG8uRRL
 wH7kxb0aU784iOVrI1NKnnJoyS0YEqg8uLCRSRxZxgkp9rcaHsgOJ9RlmVje9njycaGW
 7flQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXpnpfHkueA7sdX4teuh02Afvz+47alpq5Fp9pKLO8Hvs4jKcm2hVr3OpZi3ubeSkwHS+OI90/z8LFFnkWJ4CNwxJo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwxdutcAEHgXW2Px9FxWW/uI1Tbee1ATBcDZOhag+YK0DhV5mJI
 bmn2Gi7USHkSTWMZMGX5ZcCPeFef61+C17iAbkonapGbJz5IwxUcFpHPnwrEsctCMx9wC34QXKw
 FXE8WbwEw9n5w+A==
X-Google-Smtp-Source: AGHT+IGFKc3APByuuUCC/SJ/U3h/jsYQ5L0n7CiuMCpjGBt4me8xIhMm+owqe3Jpb+ZT+O252CMSOajCRUIPFA==
X-Received: from wmbhe15.prod.google.com
 ([2002:a05:600c:540f:b0:442:f45c:c10c])
 (user=jackmanb job=prod-delivery.src-stubby-dispatcher) by
 2002:adf:9c81:0:b0:3a8:6262:e78 with SMTP id
 ffacd0b85a97d-3a8fe5b1dd8mr9761747f8f.37.1751369401366; 
 Tue, 01 Jul 2025 04:30:01 -0700 (PDT)
Date: Tue, 01 Jul 2025 11:29:59 +0000
In-Reply-To: <2025070142-equation-unlighted-9720@gregkh>
Mime-Version: 1.0
References: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
 <2025063054-abridge-conclude-3dad@gregkh>
 <DB0MKNAAHYVK.3V2BN2WP3C7ZI@google.com>
 <2025070142-equation-unlighted-9720@gregkh>
X-Mailer: aerc 0.20.1
Message-ID: <DB0OMYW0QFR0.33PUE4BU0XS5D@google.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue Jul 1, 2025 at 10:14 AM UTC, Greg KH wrote: > On Tue, 
 Jul 01, 2025 at 09:52:55AM +0000, Brendan Jackman wrote: >> On Mon Jun 30,
 2025 at 6:10 PM UTC, Greg KH wrote: >> > On Mon, Jun 30, 2025 at [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.208.202 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.202 listed in wl.mailspike.net]
 -0.1 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1uWZaJ-0007xr-EZ
X-Mailman-Approved-At: Tue, 01 Jul 2025 12:23:02 +0000
Subject: Re: [Openipmi-developer] [PATCH stable] ipmi:msghandler: Fix
 potential memory corruption in ipmi_create_user()
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
From: Brendan Jackman via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Brendan Jackman <jackmanb@google.com>
Cc: Corey Minyard <cminyard@mvista.com>, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue Jul 1, 2025 at 10:14 AM UTC, Greg KH wrote:
> On Tue, Jul 01, 2025 at 09:52:55AM +0000, Brendan Jackman wrote:
>> On Mon Jun 30, 2025 at 6:10 PM UTC, Greg KH wrote:
>> > On Mon, Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote:
>> >> From: Dan Carpenter <dan.carpenter@linaro.org>
>> >> 
>> >> commit fa332f5dc6fc662ad7d3200048772c96b861cf6b upstream
>> >> 
>> >> The "intf" list iterator is an invalid pointer if the correct
>> >> "intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
>> >> and invalid pointer will lead to memory corruption.
>> >> 
>> >> We don't really need to call atomic_dec() if we haven't called
>> >> atomic_add_return() so update the if (intf->in_shutdown) path as well.
>> >> 
>> >> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
>> >> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
>> >> Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
>> >> Signed-off-by: Corey Minyard <corey@minyard.net>
>> >> Signed-off-by: Brendan Jackman <jackmanb@google.com>
>> >> ---
>> >> I have tested this in 6.12 with Google's platform drivers added to
>> >> reproduce the bug.  The bug causes the panic notifier chain to get
>> >> corrupted leading to a crash. With the fix this goes away.
>> >> 
>> >> Applies to 6.6 too but I haven't tested it there.
>> >
>> > So what kernels are you wanting this to be applied to?
>> 
>> Right, sorry for the ambiguity.  I've just applied the patch to 6.6 and
>> booted QEMU and it worked fine.
>> 
>> I have not reproduced a crash in 6.6 but it's pretty clearly a real bug
>> (it decrements the target of an uninitialized pointer).
>> 
>> So if you're OK with that then please apply to 6.6 and 6.12. Otherwise
>> just 6.12 is fine, I will send another PATCH if I ever hit the issue for
>> real in 6.6.
>
> But why would we skip 6.15.y?  

Ah, sorry. I forgot that existed (I was conflating "longterm" and
"stable" in my mind).

I've just applied this patch to 6.15.y and booted QEMU, seems OK.

Aaand now this made me realise I also forgot 6.1 existed and it also
has the bug. So I've just applied it to 6.1.y and booted that in QEMU
too.

So: 6.15, 6.12, 6.6, and 6.1.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
