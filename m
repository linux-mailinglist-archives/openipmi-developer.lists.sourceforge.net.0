Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E945F8B98A
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Aug 2019 15:08:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hxWX8-0002Gp-3z; Tue, 13 Aug 2019 13:08:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hxWX5-0002Gd-TQ
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 13:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sHqdyc4Y9vZBI+PAJwzKm1MdL4VioP4FdD5D8qM69Eg=; b=h+V/p+eem5lFas0yYqaPfvfv7b
 FV47iSIZcFblf/FSbgsCbLEfx/QJKwVB5UOLckeJ9XlGX5rPGhGAAK0Pf8AGYQBHjtAUXPu4DI4ee
 qEv9YlnyEiNs6VKdUH9pvPTxaEB1/yfisb7HRk8BHci2bVrXvGA3X5b5fM+hjx4Dh/Os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sHqdyc4Y9vZBI+PAJwzKm1MdL4VioP4FdD5D8qM69Eg=; b=bCM7CajyEA1K65cqZ52lvjz/x/
 twuexkVKMUIispUgrK2gYSgMtZEoF0jqptaRJdeczcOhhue6QK6aMBZPy/PEP79vg5BIB6ZUp0OFb
 x4nRYMYqN9YqKpBANPovd6PATamJfHzq3ygKK9mjLv3Qnl9wXZNJn9blTouM0ZhWJl0Q=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hxWX0-002mSn-OZ
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 13:08:11 +0000
Received: by mail-ot1-f67.google.com with SMTP id q20so19209773otl.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Aug 2019 06:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sHqdyc4Y9vZBI+PAJwzKm1MdL4VioP4FdD5D8qM69Eg=;
 b=U2fK1YhNWxF4sQubxzrJWU1HQi+a9mDa5RNZdbCrNkXAzHkrY3FOToD9KwVlQDu4F9
 nfLGpkgIWEtjgFf15W8QdJwXn6cwXVivM/B1vTD59EK8uYMBDHngwP7EnCzQw3aCrdYM
 i/sEUco+pdWaQBYv3v+y74Q6+LxP414Fi5tzmKu0PoFe6g8f2ZSs6ie1TupAaegOMPIw
 aDEdlxLvNh3ZeIGpPGV2A6iXz4fSakctat8qic2gAaMipy/lhEWRRuWRvqdrnhgvsBN9
 s3TmP/ZKq1TAra5AhK/8gSF82di9uKJdqYQpPzmDcy8QSxSYqYxk2pTtOib8yv+57QAl
 50yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=sHqdyc4Y9vZBI+PAJwzKm1MdL4VioP4FdD5D8qM69Eg=;
 b=iWoDQHtUzilrs6TSIrrYecQAtF5fnTWLY5B0kBY3ey+58CE1qiVlKB/k1RWr0VeECx
 M7fnTTfVsxZdOdNERT6fnZeXBVvL5CiHhURRwV5VaTdaVoU706SD5q3vLlcQrT1lmE33
 Yr0J6F3Rjiw2BWabu649qYTyTPtU8lyy1PmKgc3GHMI595l+R87tHfnukt9cSIXI5BM5
 zYw64E+DaeqYSeBtqmq51y/91xEvThyi/nvTXIzdSLOyEoUMqS/qsefoiSMZvRCzXJ8/
 CKlfJ+DLZbHiNebsjkBz5kxqh/gB+vb+vZxTf5qiA2vhFyJSQkZxXduYESMIpTY84z+3
 bQ7Q==
X-Gm-Message-State: APjAAAWWPpgJFgqat5kcEwKOvlzYXB9oDcW86jqOHkHRQD8ZCycYQ2pi
 FwOYD5zdgast6PF/hbKz3IzS2oU=
X-Google-Smtp-Source: APXvYqx3IdBkIwnrv4mbrSEsBsoDPMMHIAlVl9vSc4PZO6NbV6RI6dnG3WA2D2vPrijnuC+pCqiaug==
X-Received: by 2002:a54:4693:: with SMTP id k19mr1264474oic.160.1565701680297; 
 Tue, 13 Aug 2019 06:08:00 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id c15sm2306379otf.35.2019.08.13.06.07.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 06:07:59 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8485:a4af:5eb3:3eea])
 by serve.minyard.net (Postfix) with ESMTPSA id EEFDE180039;
 Tue, 13 Aug 2019 13:07:58 +0000 (UTC)
Date: Tue, 13 Aug 2019 08:07:57 -0500
From: Corey Minyard <minyard@acm.org>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20190813130757.GJ5001@minyard.net>
References: <9a8dad96-4468-bf86-56b7-bb3700d0c064@camusofamily.com>
 <20190813125155.7118-1-tcamuso@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813125155.7118-1-tcamuso@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hxWX0-002mSn-OZ
Subject: Re: [Openipmi-developer] Corey,
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Aug 13, 2019 at 08:51:55AM -0400, Tony Camuso wrote:
> This fixes the problem for the scheduled case, but I don't think it will
> fix it for the run_to_completion case.

Locks are turned off in run_to_completion.  So there shouldn't be
an issue there.

-corey

> 
> I'll have to think about that a bit more, unless you have some insight.
> 
> From d69ada45a95d9c5bcc95329e5bc16a56cd46cc53 Mon Sep 17 00:00:00 2001
> From: Tony Camuso <tcamuso@redhat.com>
> Date: Tue, 13 Aug 2019 08:27:57 -0400
> Subject: [PATCH] ipmi: move message checking into the tasklet to avoid
>  deadlocl
> 
> In the source stack trace below, function set_need_watch tries to
> take out the same si_lock that was taken earlier by ipmi_thread.
> 
> ipmi_thread() [drivers/char/ipmi/ipmi_si_intf.c:995]
>  smi_event_handler() [drivers/char/ipmi/ipmi_si_intf.c:765]
>   handle_transaction_done() [drivers/char/ipmi/ipmi_si_intf.c:555]
>    deliver_recv_msg() [drivers/char/ipmi/ipmi_si_intf.c:283]
>     ipmi_smi_msg_received() [drivers/char/ipmi/ipmi_msghandler.c:4503]
>      intf_err_seq() [drivers/char/ipmi/ipmi_msghandler.c:1149]
>       smi_remove_watch() [drivers/char/ipmi/ipmi_msghandler.c:999]
>        set_need_watch() [drivers/char/ipmi/ipmi_si_intf.c:1066]
> 
> Upstream commit e1891cffd4c4896a899337a243273f0e23c028df adds code to
> ipmi_smi_msg_received() to call smi_remove_watch() via intf_err_seq()
> and this seems to be causing the deadlock.
> 
> commit e1891cffd4c4896a899337a243273f0e23c028df
> Author: Corey Minyard <cminyard@mvista.com>
> Date:   Wed Oct 24 15:17:04 2018 -0500
>     ipmi: Make the smi watcher be disabled immediately when not needed
> 
> The fix is to move the message checking code out of ipmi_smi_msg_received
> and into smi_recv_tasklet, which processes the message checking after
> ipmi_smi_msg_received releases its locks.
> 
> Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
> Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
> Signed-off-by: Tony Camuso <tcamuso@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 98 ++++++++++++++++++-------------------
>  1 file changed, 49 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 6707659cffd6e..13402483f2623 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4426,6 +4426,54 @@ static void smi_recv_tasklet(unsigned long val)
>  	struct ipmi_smi *intf = (struct ipmi_smi *) val;
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
> +	struct ipmi_smi_msg *msg = intf->curr_msg;
> +
> +	if (msg != NULL) {
> +
> +		/*
> +		 * This is the local response to a command send, start
> +		 * the timer for these.  The user_data will not be
> +		 * NULL if this is a response send, and we will let
> +		 * response sends just go through.
> +		 */
> +
> +		/*
> +		 * Check for errors, if we get certain errors (ones
> +		 * that mean basically we can try again later), we
> +		 * ignore them and start the timer.  Otherwise we
> +		 * report the error immediately.
> +		 */
> +		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
> +		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
> +		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
> +		    && (msg->rsp[2] != IPMI_BUS_ERR)
> +		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
> +			int ch = msg->rsp[3] & 0xf;
> +			struct ipmi_channel *chans;
> +
> +			/* Got an error sending the message, handle it. */
> +			chans = READ_ONCE(intf->channel_list)->c;
> +			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
> +			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
> +				ipmi_inc_stat(intf, sent_lan_command_errs);
> +			else
> +				ipmi_inc_stat(intf, sent_ipmb_command_errs);
> +			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
> +		} else
> +			/* The message was sent, start the timer. */
> +			intf_start_seq_timer(intf, msg->msgid);
> +
> +		if (!run_to_completion)
> +			spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> +		/*
> +		 * We can get an asynchronous event or receive message in addition
> +		 * to commands we send.
> +		 */
> +		if (msg == intf->curr_msg)
> +			intf->curr_msg = NULL;
> +		if (!run_to_completion)
> +			spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> +	}
>  
>  	/*
>  	 * Start the next message if available.
> @@ -4478,44 +4526,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  	    && (msg->user_data == NULL)) {
>  
>  		if (intf->in_shutdown)
> -			goto free_msg;
> -
> -		/*
> -		 * This is the local response to a command send, start
> -		 * the timer for these.  The user_data will not be
> -		 * NULL if this is a response send, and we will let
> -		 * response sends just go through.
> -		 */
> -
> -		/*
> -		 * Check for errors, if we get certain errors (ones
> -		 * that mean basically we can try again later), we
> -		 * ignore them and start the timer.  Otherwise we
> -		 * report the error immediately.
> -		 */
> -		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
> -		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
> -		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
> -		    && (msg->rsp[2] != IPMI_BUS_ERR)
> -		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
> -			int ch = msg->rsp[3] & 0xf;
> -			struct ipmi_channel *chans;
> -
> -			/* Got an error sending the message, handle it. */
> -
> -			chans = READ_ONCE(intf->channel_list)->c;
> -			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
> -			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
> -				ipmi_inc_stat(intf, sent_lan_command_errs);
> -			else
> -				ipmi_inc_stat(intf, sent_ipmb_command_errs);
> -			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
> -		} else
> -			/* The message was sent, start the timer. */
> -			intf_start_seq_timer(intf, msg->msgid);
> -
> -free_msg:
> -		ipmi_free_smi_msg(msg);
> +			ipmi_free_smi_msg(msg);
>  	} else {
>  		/*
>  		 * To preserve message order, we keep a queue and deliver from
> @@ -4529,17 +4540,6 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  					       flags);
>  	}
>  
> -	if (!run_to_completion)
> -		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> -	/*
> -	 * We can get an asynchronous event or receive message in addition
> -	 * to commands we send.
> -	 */
> -	if (msg == intf->curr_msg)
> -		intf->curr_msg = NULL;
> -	if (!run_to_completion)
> -		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> -
>  	if (run_to_completion)
>  		smi_recv_tasklet((unsigned long) intf);
>  	else
> -- 
> 2.21.0
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
