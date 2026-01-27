Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFLlGNzPeGmNtQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:46:52 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FC95F69
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 15:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WAsf+vCvtawSRW6asYs7ouGM/jsdVIuKp/yy9suq/F0=; b=jriKYGCgHS0DkYRRhck1jQoFK3
	T9hwkQkY8WOP9D3x6ukgUCanSny8DuYTToMHYCdcz/JpNFedIOhbtSyxOqFhZXXBm/3+6I4x1ziEz
	1Lspydaw1J/320ECsvpURNVIp7FNI33KtKtQJQfpm4vZVwM2ZWbT2soZt45R0c3TYo4w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkkL6-000403-2P;
	Tue, 27 Jan 2026 14:46:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkkKt-0003zh-G2
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fgGF8ctS0K4niRH9iziMpNUnP6faXj3JV6+BPJJ9b/E=; b=hFcRFfbdMGTDAkP8oDmFIw14ps
 gRzGMfV60YHJzPqF3YJtMJFML6SMeA8lSmVa2KiBdzRDZXWoxjfmT7FzT3ZCWkNx1c3uQCKuseD66
 lvxl4WPGSsm8+A6a8q/Bfabh80m8i7nhitKp3//a2esuNr5AYm3x5HBq7IxChRI7kDiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fgGF8ctS0K4niRH9iziMpNUnP6faXj3JV6+BPJJ9b/E=; b=ZFgh46CT4Ima6Sm15deFrgmfDb
 wd4UiaGy+iTkUZgw9NX5FSYLsG7E+dSOdf39ev3Al+/c7fixKUwSZ9tGXcDUd7YBZ6BS3pjPoEbw7
 NVWVa5i92HHAi8yn5r+jpH+d+eNWtRtgbF466FhOM0KgR2AC/pzJEf8bw6q3QbPKwNrs=;
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkkKj-0007s8-Tx for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 14:46:22 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-4086661715cso3948915fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 06:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769525171; x=1770129971; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fgGF8ctS0K4niRH9iziMpNUnP6faXj3JV6+BPJJ9b/E=;
 b=UBj892+TODpZe4nQcfAKIDa92zbFiBB9NPfNVQCdIZxHt2LkOJ7FxLF+651bjdDnEE
 2egjHW6NJeHqz0nI29pPRUaE6HL7vkv2Z+b7JjapIsCtpmGc4E6oCC1x+nMOTC+e1fCO
 6YZd8Ks5phGhcPE7MxoBjYGqy1mqoZw1qDXzk3KLHIGm/HcgL0qj0OoGSDkFQxJX74aq
 z0WFSHQkklWifQx/jKS7lmNU8l9iVtmBFNdFjPXXaVXlHxgu2mw+yNQQioZPPd70pRd2
 c6JLLk3MoO03wr2aCbHqxzQsTmrt1QFWul5aFf+lZSb+wBr17AmM1bFmJwKfHo0ij648
 5TkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769525171; x=1770129971;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=fgGF8ctS0K4niRH9iziMpNUnP6faXj3JV6+BPJJ9b/E=;
 b=VTXi/I7+Xo38ok7dixv/Mvn7/kkehl9g6qGJqM/JlU/x3IJz9v+Z6/FDTEaM8uNcNu
 Y7U3CEzTAb89d+y843Oj00mTUlC8a0EXrhFozougpkGCp7DfqG9vjMMHQKdfTG1rhL6l
 L0cwMPa7SvOOYw8vWmZmA6CKkOlXyMoHOYQCKu/IfXOpz2KjGx/Q+X+5RitPNcZ4pnwB
 IswYJde1YWEoYNxDGCMj3ZCVauHYquaKSTbnRrcwVUjnn/OkDr8NevKkSdYpnWisY0/k
 L7UjY1Cdz3Vo9PKaCeej+Rr375dnQAX/rXiKWDKI1YdBoYJrfaPAjg+fTkjV5tolL10W
 J+oQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRYEFz6atQ5FGXKd87+oRlW3/hmXVQnvw770dlGYS0YPGWqiXlHAZB3veqt4zGm8TydRVuyXl7D+DxSNGps6sLfBs=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxS8fJblYGw0pYCYEGCxvH+8qj/IR0T5oNSgKwpfCq8XjojdSSx
 zCRVpRFe4X25MBRXb3FUEph1T77rCyKcggS5gWe8GFuDQl1L1LXbL5766MT1biA8PSk=
X-Gm-Gg: AZuq6aJTqbRsmY+UkGBQmecCLaNuZvWkwqkKuIGLu5qxR+DkyzWoTW/wfqVV1Zt6guc
 7I1Yjt8XgwqlWRrgO3ReN/cAyeZw2jDfTnbH7jzLPa/p0gOsxUxYSfijGtkVccn2yUcpObXCO/+
 Vrh04hRDWhUYoHn3P/q8Ka8BjBzxjzSvbVO+19RN86J9MILJ5MbatyhtW9haOBi6+rsyAgdGU/8
 YJD13Nkfz4UP18+WbSUd3EUslciJ3pD+7EFQ3C3bpfx3vTgaw+1Qs2aabrMlIVCAjI0VEi7AaiI
 5iM/LX3b6o3YclzlNAeI/o1WNveEls+vlK/KnHW4dRgGU3jruYMmlu2hDnnwitTMtERqPprQvV6
 sbb24REEF8kdwz/pHAkvZEFPNZX/J6ewgMkhfjErAuk0VThzWfk3u+xcXcwsNzDw3oM41MjwBMo
 F6OmQ9GWo8VF04pOovYUFq9JJE+J2w0mNuX0GbB4sCphJWte30mzIypcxxfD9K9OPWWSFlyySsi
 LErxznbacKkgg==
X-Received: by 2002:a05:6870:3846:b0:349:de3c:bfc5 with SMTP id
 586e51a60fabf-4093fc81ca3mr1148844fac.7.1769525171085; 
 Tue, 27 Jan 2026 06:46:11 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-408af7ff54dsm9092668fac.1.2026.01.27.06.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jan 2026 06:46:09 -0800 (PST)
Date: Tue, 27 Jan 2026 08:46:06 -0600
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>
Message-ID: <aXjPrnG7ErymtHBx@mail.minyard.net>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
 <20260127135917.1597762-3-corey@minyard.net>
 <aXjOT9e11GSrMHiy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXjOT9e11GSrMHiy@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 06:41:48AM -0800, Breno Leitao wrote:
 > On Tue, Jan 27, 2026 at 07:54:40AM -0600, Corey Minyard wrote: > > It made
 things hard to read, move the check to a function. > > > > Si [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vkkKj-0007s8-Tx
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Consolidate the run to
 completion checking for xmit msgs lock
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
Cc: kernel-team@meta.com, llvm@lists.linux.dev,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[meta.com,lists.linux.dev,gmail.com,vger.kernel.org,kernel.org,google.com,lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: 854FC95F69
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 06:41:48AM -0800, Breno Leitao wrote:
> On Tue, Jan 27, 2026 at 07:54:40AM -0600, Corey Minyard wrote:
> > It made things hard to read, move the check to a function.
> > 
> > Signed-off-by: Corey Minyard <corey@minyard.net>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 40 ++++++++++++++++-------------
> >  1 file changed, 22 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index a590a67294e2..030828cdb778 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -602,6 +602,20 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
> >  static int __scan_channels(struct ipmi_smi *intf,
> >  				struct ipmi_device_id *id, bool rescan);
> >  
> > +static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
> > +				unsigned long *flags)
> > +{
> > +	if (!run_to_completion)
> > +		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
> > +}
> 
> I usually see the opposite construction in most cases. Something like:
> 
> 	static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
> 					unsigned long *flags)
> 	{
> 		if (run_to_completion)
> 			return;
> 
> 		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
> 	}

Yes, that's better, I've changed it.

> 
> Thanks for doing this, this looks way better!

No problem.  It was more for my own benefit :-).

-corey

> --breno


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
