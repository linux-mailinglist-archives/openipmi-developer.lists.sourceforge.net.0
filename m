Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N/gAC7I4mmR+QAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 01:54:22 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2188C41F3AB
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 01:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYg4rEKkaDcSiVrAfSbKYBJc2gQOrlguQwl9UWxDXNk=; b=C/Fz7QA1MUwMiYQP1t+GK5qJj1
	z651r2Eel2A7pwYjmOnmxpoae27QW1U/gH2f/P/IRGx9pAUVW5RD86mwdLjlOqlt8DAP1v1RIPIGM
	VvcCc0+Tg1bwmk7tI6OFsNu/i03B61VICwXRKzZ8MjyxZZpPuOm4ZQ/8wuyFHrK2rbxM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDt0l-000169-U0;
	Fri, 17 Apr 2026 23:54:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wDt0l-000163-6C
 for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 23:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d0iBqvxrj1FF5CFkZU0UBhyVIys8trrMQJE6XnUM2Qw=; b=Fm/+Up6gUV9VsMpN1zJPTlYnWU
 NtaaoL4rebK0LZ0HZLEpxvXLHFxJUbIwwnTEiMeYS/l8e/QRmfsu9Zboz5KMr3Sm+lTDnmLvTwoRy
 TpQlY5px0Qq/abWUqWadBN/l+BedNIxb7f+skDq+FryQ3/2BuWTQsrSdkyH6FfT7KIU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d0iBqvxrj1FF5CFkZU0UBhyVIys8trrMQJE6XnUM2Qw=; b=g6vOlO/fn83dBm55p+ZiUSIpOT
 K5jdghlCOstOppQDEAMkgKxFKwxnKz0Op5z5z/A3sZ2S/ukjbLMThoiiHt+UMa3fGMV6PTJEQZHTw
 R3wT9PY4wLXq4UBvrsOVr/Sv/rRjFbCggYyXwrIA3ple14dHMIIqBbptZyzZtu3wiMMY=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wDt0k-0002HC-PF for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 23:54:11 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-4042fe53946so553218fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2026 16:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776470040; x=1777074840; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d0iBqvxrj1FF5CFkZU0UBhyVIys8trrMQJE6XnUM2Qw=;
 b=i9eestOZr2LT+XF/PEjgPRsCb1Gv+ZKgFO/e2JirFCupLGNuFnRUuQT3jSW8nJtTWK
 LFkwwlBjEG/bLtEWRe6fjAgCTQIvuyWrdMqPEWGRSMCG+YeOGvY8JZO1JFmt0NyrJC2P
 SZ5FrifL6dUwlJv6r3Hzdyad3rzzq0yeCVbs/U/iMycKPfyLWslUjpnPMbZ7WwJlMA2p
 Lh2O/PvMNcBGO/c57i2iC1DGbZwvxBC/CgeqwBOzOc5vj+hiXBVaC8wKBtN4YBkCxXf5
 VT1UBdStO3HlE8cW4DNua+Dv9nPL2HqOUPdYV4eBDvXMtT6mEw4/t5pJwRFioUA9NVEP
 hllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776470040; x=1777074840;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=d0iBqvxrj1FF5CFkZU0UBhyVIys8trrMQJE6XnUM2Qw=;
 b=RzKjrpxnp8EAIgOA1/OgB8GJ6z4KUEFxhCvs1+o/MOtiW8tdgugoHmCI7hxD60yrmo
 EGEL4d9INpHU7fSvW5qg+9C+ikzPbpw/ZeQ7XQMapUrk4ocxj5ClRbCtu5BmJGrL37Es
 khEhUU3aahOky45jggkkc7y/Djv+XDL3BNXz/Wv6H9ywJhIEsWutl18OIYBYsHmMkb39
 ybzwrjWQHhHjKM2zgaIgtK76eqcogaQ/7susYN1sm7F5LffGODZOT0SFfRrv0EUS79z/
 QWpgRjumgtSp32FElGA7I6faL0LCrPj+DfNjFOB3DS4hkL2/7d4WC+9tbWgRYK4GYx/R
 zEbQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9irm++6msNaDh+OSQqEug/U7EbbEm1HvAv9cQuI4eaTG+EITGSi87TmtAXQcq65Afl12at5jYbyIAeNTdoaNmgJGw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxS0HU4SXinRKIZeQC+z22QebtsH5z41OLZKArWg4LGHdViGC1H
 F59C1zeavDDMvIPaD1QfKsScdYcNkzBrPtF3GRKokRNqnkGzD4VBSnx7/bHoOlMMvc0=
X-Gm-Gg: AeBDievLwDBUEviIvbupystYxE6Rkvr8w7UoK6rSjHNj88NcFToYhDopiJDZEnQUXmT
 IaXI8qMEyckzagHj77AL5JXkNpbMt6kFmmNFbj6/DhxD2zG/YWNtggvqyk/FcndDHM6vy/M9qf3
 j+iWWoFTNv7BWnrFifKh7XVEVf3owgZSmLFzA1MIjz9aZiXZZooHWcAtdB51+d0OC2UX+Ijd3l4
 c6Ail0XKwdWdZ7PUlMEikElGgvlpc6BeoqagPK253raxIzl2NvMaoXDpTSwkrnG0bH8O/58cuDt
 RZu5I3T0KTxjzDGgXSodK81kzcGUSUHLw9r2xV53v50KvxUhbhwWHIi9UQqMg7PANUXoF3WSXuo
 LntdFCFzPg/84df9dirvRLZ3KEX3e9pa3+HDBRE1PS6ysraKHph2/F5I29T9f30xXM1HrbmRNxJ
 DUXbW5xXQw3sblHENsbo7UmvkM7PiawVfmCOSefOf6it8noE35Gw3MRiQb8/F43R1uk6Et1d0Da
 xsCKXrLpwyqwKzUAtHFG1pzgA==
X-Received: by 2002:a05:6871:4086:b0:417:435c:ba0a with SMTP id
 586e51a60fabf-42aded59513mr3106688fac.33.1776470040016; 
 Fri, 17 Apr 2026 16:54:00 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:257b:858d:a51e:d838])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-42b934a2e8esm2724448fac.10.2026.04.17.16.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 16:53:59 -0700 (PDT)
Date: Fri, 17 Apr 2026 18:53:55 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>
Message-ID: <aeLIE0Psdlvr9l7j@mail.minyard.net>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <aeKwa4napKfBerJM@matt-Precision-5490>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeKwa4napKfBerJM@matt-Precision-5490>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 17, 2026 at 11:23:03PM +0100, Matt Fleming wrote:
 > On Wed, Apr 15, 2026 at 07:16:53AM -0500, Corey Minyard wrote: > > > >
 The lower level driver should never not return an answer, it is s [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wDt0k-0002HC-PF
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:openipmi-developer@lists.sourceforge.net,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:replyto,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: 2188C41F3AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 11:23:03PM +0100, Matt Fleming wrote:
> On Wed, Apr 15, 2026 at 07:16:53AM -0500, Corey Minyard wrote:
> > 
> > The lower level driver should never not return an answer, it is supposed
> > to guarantee that it returns an error if the BMC doesn't respond.
> > 
> > So the bug is not here, the bug is elsewhere.  My guess is that there
> > is some new failure mode where a BMC is not working but it responds well
> > enough that it sort of works and fools the driver.  But that's only a
> > guess.
> 
> I can now reproduce this pretty reliably by running concurrent
> ipmitool commands (sensor/sel/mc info) + sysfs readers + periodic
> ipmitool mc reset cold. It wedges in a few minutes. 

Hmm.  If you are sending cold resets, then the driver is going into
reset maintenance mode and it should be rejecting messages for 30
seconds after you send that command.

You can disable that by changing is_maintenance_mode_cmd() in
ipmi_msghandler.c to always return false.

> 
> My working theory is handle_flags() in ipmi_si_intf.c can loop on
> flag-driven commands (e.g. READ_EVENT_MSG_BUFFER) without ever calling
> start_next_msg(), starving waiting_msg indefinitely.
> 
> Captured state at wedge:
> 
>   si_state=SI_GETTING_EVENTS  msg_flags=0x02
>   si_curr cycling cmd=0x35 (READ_EVENT_MSG_BUFFER)
>   si_wait frozen cmd=0x08 (GET_DEVICE_GUID, never promoted)
> 
> The cold reset makes the BMC report EVENT_MSG_BUFFER_FULL during
> re-init, which drives the flag loop.

The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccessful
READ_EVENT_MSG_BUFFER command completes.  Getting data from the
BMC has higher priority than sending data to the BMC.

If the BMC continually reports success from READ_EVENT_MSG_BUFFER, then
that would certainly wedge the driver.  But it would have to continually
report success for that command, which would be strange as its supposed
to error out when the queue is empty.

If it's really something like that, I could also look at adding limits
for those operations.

To debug things like this I often add module_params that let me see what
is going on.  But you can look at the "invalid_events" counter to see
if the data is bogus.  Or there should be an "Event queue full,
discarding incoming events" log coming out once at the beginning of when
this happens.

-corey

> 
> Thanks,
> Matt


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
