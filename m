Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D29CA8C087
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Aug 2019 20:24:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hxbTD-0000UG-Rs; Tue, 13 Aug 2019 18:24:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1hxbT7-0000Ty-Tv
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 18:24:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8M1SoJBJmjOdAts/8iG9V44ip5+X8oUvkW9tPcLV5uU=; b=T3WGqt/ORMQiXj/Te7WorkTQaw
 jTX1OmeKyqmrN4Vs4m2xpkpspF/R5tqhMiZAPzZeWPBosCPADzeQqA7JLAz9SgdyT+rqezgpljMuN
 Jh4V9FTCO/uj/dAT+G7K2pqtCeFpvP+lEoD0Hx9WeiR9vSXHU0opGGR9docHocIW739I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8M1SoJBJmjOdAts/8iG9V44ip5+X8oUvkW9tPcLV5uU=; b=IWzTchvxB0uHtfnON4NuXRfUrf
 FCfjtk4wiV4G3nf8gOm9nGarkOzl+q1JSi0GPm/A9noX/UW3pZO8aOLXDUpY7a97FWD484jSbvxev
 YfuCfDxHMp5gTrzZh6QCOnP1LfV/0zNauUnX0yjPpWyUWUE5gdpP/hJvIz4oBI78etIc=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hxbSt-002hFe-AM
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 18:24:25 +0000
Received: by mail-ot1-f66.google.com with SMTP id w4so1194729ote.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Aug 2019 11:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8M1SoJBJmjOdAts/8iG9V44ip5+X8oUvkW9tPcLV5uU=;
 b=itbHcin7NnlYutwsF0RcmE0fIyAoCqnmFODLwhgzolUqoKNXbe+a9ypT1Ln9D2iS6W
 DPMCb/a0yjZAJmtxGKdMRFw/dztu3UVAEUKlYs5Cc+TD81hBspn68EWIg+44OTbqjv+B
 hTCGIlLSnBJ3JGNxchVmtyhbrZZ3Zrs/gpUm71aQyW3Birks9ORrxgPFyiFPhYfZ1YW0
 ZyiudYMy1TQjE/Z1q443VANYpaZdizCftqSmt6tojh7kszqSvqFGajyi6koEW/uy9l+d
 SerzdcJbbkr2T0nUvji7npLnyymcolIgbhIopucd+18q+ds86772dshVSP5sqBnX21b+
 9cHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=8M1SoJBJmjOdAts/8iG9V44ip5+X8oUvkW9tPcLV5uU=;
 b=JH5qFIbfyESha2sF3xQP305hk4qAuA7GU5lR1p3vMVaUPgs5qdPf9Ur6JzD7Bf+acS
 XQUihXyaR/hk2ayP6boz95nMv3CwZZIQJJn/BUorW9ATCYqpEduVwZI9s1FILgYLRrsh
 zgJ+ebS0/sRRxqhetPB/mTyTTQd8rwtYMPl0uGscE1HljUqNwZXzJ0ao+roqOnlnYiqA
 Qjxj1Rc/0zN/uy5xlB3lR/4AvQ+8/8XB0hFZavsKmeYFHduijWX7DFRng2LhmGfXOzjR
 /xBsaI4fRxmM/yBUGN4XrdOqlTOn+176NTmoXYXdezPu8dLFpA998wJhcPAHOCQWOppf
 u+zw==
X-Gm-Message-State: APjAAAUykx740HvjK5Wf3gDY5dXIG/ST8ZEa8DqxUTjdiGibhknXHcbm
 56vDsCkcwT6WQu+i7byqdlDELwv2x4X4dQ==
X-Google-Smtp-Source: APXvYqyvJJLLEibLskK9nAIAD3Dn3sFuCHkV7yDH5QkuYicyvJt4/PaClikfjYTFwD5rPmOcIrLkOQ==
X-Received: by 2002:a02:354d:: with SMTP id y13mr888153jae.41.1565719054093;
 Tue, 13 Aug 2019 10:57:34 -0700 (PDT)
Received: from minyard.net ([2001:470:b8f6:1b:8485:a4af:5eb3:3eea])
 by smtp.gmail.com with ESMTPSA id x11sm25575814ioh.87.2019.08.13.10.57.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 10:57:33 -0700 (PDT)
Date: Tue, 13 Aug 2019 12:57:31 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20190813175731.GP5007@minyard.net>
References: <9a8dad96-4468-bf86-56b7-bb3700d0c064@camusofamily.com>
 <20190813125155.7118-1-tcamuso@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813125155.7118-1-tcamuso@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hxbSt-002hFe-AM
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
Reply-To: cminyard@mvista.com
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Aug 13, 2019 at 08:51:55AM -0400, Tony Camuso wrote:
> This fixes the problem for the scheduled case, but I don't think it will
> fix it for the run_to_completion case.
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

I wasn't clear enough when I told you how to fix this.  What you have
below won't work, intf->curr_msg will never be the message you are
looking for, it just holds the current outgoing message.

What I meant was to go ahead and add all message to intf->waiting_rcv_msgs
and process this particular message type as part of handle_new_recv_msgs().
That's called from the tasklet, and I was too flippant in my suggestion.

You need to leave the check for msg == intf->curr_msg in place, that is
necessary to start the next message.

-corey

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


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
