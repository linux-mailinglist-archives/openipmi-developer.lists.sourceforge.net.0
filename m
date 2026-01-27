Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6An5AIq9eGn6sgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 14:28:42 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D3F94E69
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 14:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dPEZJytungmHVt52r/UYAAkmEASJNOh3YUf0LvNkTJ8=; b=I7eLkJcxrzMWOf/7XNWQh3z8sD
	WwCYjECUGa7g8pwqtCSyBnGfauHAOGeUH9+SZnwBu370UyKb79e0qWjHZpXHqjCVNfpof+ox4fjBi
	MnX61S8BMeADocI9AkFT9Ru8waC+7WK6JK0fn+qw+DpAV9v3bSVxdP6eSMRzY8G1YHIU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkj7Q-0006cy-7O;
	Tue, 27 Jan 2026 13:28:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkj7O-0006cr-Lp
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 13:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SPNv4ujSn5GBeWJw7SR5sa7VAXW0dXiZYUYtMsCoyQo=; b=NOMVpFg+kpEQsLxsMPHm8YXfyh
 Lmthav2qi1HmQRgbJaCiaaRXR/dOIKp8rA3RsFP+W6nB9tYBqDhyopTL8Rq4Ev+XTbUp7Xhp8Q/yg
 89fkuhnxdA0a37woMR5wJC1n2L1pYHYbuwtjjEpd+nBEjQKeuolnMQIO7Y8JLv9jr+5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SPNv4ujSn5GBeWJw7SR5sa7VAXW0dXiZYUYtMsCoyQo=; b=K0sCOBBQfsSB3PRO7ZIQYGx++3
 pLbLNWCaB0W6oqS0NVnNptCQbUH2W4w54v2vcJvqR8AVWE4UFBWaQNuVW8vHbW849WItp70rtDiIx
 X/1Nz/vwl34t6IGkJzOx1ftG+bKIGP9adwhBq3baWSzpu/U0A8VfoJCs9zX17X0yS3kw=;
Received: from mail-qk1-f172.google.com ([209.85.222.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkj7O-0003hg-16 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 13:28:30 +0000
Received: by mail-qk1-f172.google.com with SMTP id
 af79cd13be357-8b2f0f9e4cbso439992285a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 05:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769520499; x=1770125299; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SPNv4ujSn5GBeWJw7SR5sa7VAXW0dXiZYUYtMsCoyQo=;
 b=TPmiCnxWUfH/FofwoZ6XLk6vgYzfqLogRSqxUxw6i6UwyfQGA529oaUJGPEqZoD8pG
 DZSK86w3h6M9Jy8g5577niw7CLEvko+QlDOrPgzxgBYjk1KDrRn+HPSuGIARijkifY0i
 5W4S81e3F3yZZKV7X02t3qSsvR9f2S22juKDEMU/3eKY1guwNlOEYV1KTGDpOxNZ5S3T
 0XL86iVsvXGpbz/uI+8h1dQNLHzf4VgLh3oaRvjqwVE4SJ9Wl5WDdaKS/7Jc2oqRMIhV
 6PoT3TlpnIkWg2d4mTo2MeWtlCip8TL2woghZVs5qom5fVopGHSH/FVrhdknNIPZT7Fu
 goNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769520499; x=1770125299;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=SPNv4ujSn5GBeWJw7SR5sa7VAXW0dXiZYUYtMsCoyQo=;
 b=cqTVvtS9j3KYV9j236uStA70g+GnVCVMuz9D0yAQYPu38UXgzUALF68LARTCjE9o9Z
 ec7JrpaY9hFocU7jg45NEjC8fdS7c8m3mzHrLL4pkIqhEJBcJAMtmx++miYmkWDTnphv
 Q2+IbQBoEO4FCIUH1LUFd657/pvgL/p8WrZp8B3daDRNytsK6YTGpn8POVxAVU4IHrhC
 JxCWBpSgpWn5vKlC6ajCGnHs2+Gt14sg/jmCLRMqp3I01EG8VoBwv63thU+GnF6dSydK
 i/L6goP55xwAQ48z6GYqmicAN1fmWXs4GDEkCeWSVoUEmadzj9p+cZRyf3cdcF7w94YK
 SLEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUc5KrQFJUvx5vbjc/tYGa2i5iLnmQLTKfyGSv5PWM/Kh2Oz7/zyIzibn8udR6obZSSjeTGp5gi0bV2FR3pYEnqTmw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwyZ2cKIwnkHfykVcrx4N9kEaFTqea5ZftnCixFOT2SKMefDsjd
 EcJmTCJ+yayBm5K7ObdsyhNDRdEaQqiMRfdlLjtXB64a5Fim5BWkanY6LJVEhRvcNEQaIxR8Gby
 x7fNu/qA=
X-Gm-Gg: AZuq6aKYnAzyxBl9s8WrHhkaHoLgmzTCErAV6/A4q//uSp6kv4VHjUVnBC6QvUQSwOX
 uxmhW2IBmSWSx452gVZzGTU+WMbGtD0byUwQ23N3qBONqjCiVSihhnkr2VEdd+3QEn0lrsDhFdE
 eSixHds+M39wpD7rZI6IQw0rD7JJdUt36REb3Y9YJul1f95uFbuFQlGIHf/Ont0ezzdqZA/Wqjj
 DoK30Wiz8Knf8HLHnxi10H7z86itIXAjX6DDad1A2Bau8enUxs02W65i5i6sbbCamo4JjuLYAPb
 cHqhpCglMcbs+LIwVEQfwarLYUyt26HIoKOWF2F6AiDDMzStegNcQ1UispKvXqwQm/i1Qec/c7L
 niXEB04u78pTltG+4NTayJmsiMPgogKkF6dDNp7SY7Vu6w0VeT0bUtYdVQxkUfrrZvQsGaY5LxI
 CHoT0RcMo9zgXB4BFqZaKGG4yETzE9N6K5xn4o2g/RjiKnWkSfzsebxNrqhADlxDGdSudDJlquB
 4E=
X-Received: by 2002:a05:6808:c3e9:b0:450:1eae:96e9 with SMTP id
 5614622812f47-45efc122f3emr893352b6e.7.1769520153474; 
 Tue, 27 Jan 2026 05:22:33 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-408afba74bfsm9488054fac.13.2026.01.27.05.22.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jan 2026 05:22:32 -0800 (PST)
Date: Tue, 27 Jan 2026 07:22:28 -0600
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>
Message-ID: <aXi8FMlZoja1aVGA@mail.minyard.net>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127-ipmi-v1-1-ba5cc90f516f@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-ipmi-v1-1-ba5cc90f516f@debian.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 27, 2026 at 01:57:59AM -0800, Breno Leitao wrote:
 > When the SMI sender returns an error, smi_work() delivers an error > response
 but then jumps back to restart without cleaning up properl [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.172 listed in wl.mailspike.net]
X-Headers-End: 1vkj7O-0003hg-16
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix use-after-free and list
 corruption on sender error
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
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:kernel-team@meta.com,m:llvm@lists.linux.dev,m:nick.desaulniers+lkml@gmail.com,m:linux-kernel@vger.kernel.org,m:nathan@kernel.org,m:morbo@google.com,m:justinstitt@google.com,m:openipmi-developer@lists.sourceforge.net,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	URIBL_MULTI_FAIL(0.00)[lists.sourceforge.net:server fail,minyard.net:server fail,mail.minyard.net:server fail];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[meta.com,lists.linux.dev,gmail.com,vger.kernel.org,kernel.org,google.com,lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,mail.minyard.net:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 14D3F94E69
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 01:57:59AM -0800, Breno Leitao wrote:
> When the SMI sender returns an error, smi_work() delivers an error
> response but then jumps back to restart without cleaning up properly:
> 
> 1. intf->curr_msg is not cleared, so no new message is pulled
> 2. newmsg still points to the message, causing sender() to be called
>    again with the same message
> 3. If sender() fails again, deliver_err_response() is called with
>    the same recv_msg that was already queued for delivery

Yes, this is indeed a problem and your analysis is correct.  It looks
like it designed with this in mind and never properly completed.

However, there are some problems with your fix:

* You leave the message in intf->curr_msg after it has been freed, which
  can result in a use after free or other incorrect behavior.  It might
  be ok in this case, but it's a bad idea in general.

* The send_failed flags is unnecessary, you could just check for
  newmsg.

* Doing the lock/unlock in error handling is not a big deal.
  That should be an exceptional case.  Adding the check every
  time in the normal flow is probably more expensive in the long run.

I'll send out a patch for this.  I also want to change the locks
and run to completion check, it's hurting my eyes the way it is now.

Thank you for the report, I really appreaciate it.

-corey

> 
> This causes list_add corruption ("list_add double add") because the
> recv_msg is added to the user_msgs list twice. Subsequently, the
> corrupted list leads to use-after-free when the memory is freed and
> reused, and eventually a NULL pointer dereference when accessing
> recv_msg->done.
> 
> The buggy sequence:
> 
>   sender() fails
>     -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
>     -> goto restart                    // curr_msg not cleared!
>   sender() fails again (same message!)
>     -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
>     -> LIST CORRUPTION
> 
> Fix by introducing a send_failed flag that signals when sender()
> returns an error. At the restart label, inside the existing spinlock
> critical section, check this flag and clear curr_msg if set. This
> ensures:
> 
> - The smi_msg is always freed after sender error
> - curr_msg is cleared so the next iteration pulls a new message
> - No stale pointers remain that could cause use-after-free
> - Only one lock acquisition per iteration (avoids extra lock/unlock
>   in the error path)
> 
> Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
> Signed-off-by: Breno Leitao <leitao@debian.org>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 3f48fc6ab596d..81259c93261fb 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4816,6 +4816,7 @@ static void smi_work(struct work_struct *t)
>  	int run_to_completion = READ_ONCE(intf->run_to_completion);
>  	struct ipmi_smi_msg *newmsg = NULL;
>  	struct ipmi_recv_msg *msg, *msg2;
> +	bool send_failed = false;
>  	int cc;
>  
>  	/*
> @@ -4828,6 +4829,16 @@ static void smi_work(struct work_struct *t)
>  restart:
>  	if (!run_to_completion)
>  		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> +	if (send_failed) {
> +		/*
> +		 * Sender failed, clear curr_msg so we can pull a new
> +		 * message. Do not clear it unconditionally as a message
> +		 * may be in flight from a previous run.
> +		 */
> +		intf->curr_msg = NULL;
> +		send_failed = false;
> +	}
> +	newmsg = NULL;
>  	if (intf->curr_msg == NULL && !intf->in_shutdown) {
>  		struct list_head *entry = NULL;
>  
> @@ -4852,8 +4863,14 @@ static void smi_work(struct work_struct *t)
>  			if (newmsg->recv_msg)
>  				deliver_err_response(intf,
>  						     newmsg->recv_msg, cc);
> -			else
> -				ipmi_free_smi_msg(newmsg);
> +			/*
> +			 * Sender returned error, the lower layer did not
> +			 * take ownership of the message. The transaction
> +			 * is abandoned - the user has been notified via
> +			 * deliver_err_response() above.
> +			 */
> +			ipmi_free_smi_msg(newmsg);
> +			send_failed = true;
>  			goto restart;
>  		}
>  	}
> 
> -- 
> 2.47.3
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
