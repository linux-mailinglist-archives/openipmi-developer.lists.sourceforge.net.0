Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBE96914
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Aug 2019 21:09:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i09VV-0001VR-PH; Tue, 20 Aug 2019 19:09:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i09VU-0001VJ-6h
 for openipmi-developer@lists.sourceforge.net; Tue, 20 Aug 2019 19:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQXRFMB6QQOOwi2RdWzoqRBTu6C+CWLQXA3kqgsHcII=; b=c2yBexI8CoVlybx2u0K0z3VD4C
 R/bEXT/1ukI+jjzT4GluXpNlDfBU3BMQe6M4Q/Lxp3AYtWQ15GOs4J2CTg/6iQmlK29+Pybj1H/x3
 P9OVen8ARyNzLQvCURuWxh4yG3vjVSbifP3ARZ0G54Ei+YhschaPTicYok09aaEzDE5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WQXRFMB6QQOOwi2RdWzoqRBTu6C+CWLQXA3kqgsHcII=; b=bBeXcM8T3iiVARUUVIrE2yyhyP
 bzBhRgpmlR29fenpHh2oYvCto2+5n6YYZBvhTAGzx+gNthYwaa8km7cY44eUMdEstutvHfAy1WRoe
 jXtEJS7FM90xSXdyNn6j3eDJJZjFqCLz8ukZ4IEV7hhFhNhRRFmlD8nZt7Y9sfUJZUw8=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i09VP-00AGye-P9
 for openipmi-developer@lists.sourceforge.net; Tue, 20 Aug 2019 19:09:24 +0000
Received: by mail-oi1-f194.google.com with SMTP id h21so4974810oie.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Aug 2019 12:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WQXRFMB6QQOOwi2RdWzoqRBTu6C+CWLQXA3kqgsHcII=;
 b=hhwFJAWj+odtb8LktUOjQ+o/8bszCgUopItN+OXW7uUaWsTMNzMP6ajG54rzbX1qlR
 s+mNAI2bVWZ/zDdhoLaGHmu58jkw+k4j/7BdiKePYK3ucrmxRv9OnoF71k5kSp+4AL72
 1rS6p5rQapT1XCEUEKlwlSCCAeZagjgAE6kZXISKB4iVtmq9YP29t8j+WXYn/Q5ZkfrJ
 YPXNbCZ+MKdfk1XAAnrR1e47wrun8gL+Ua95TEO6ka4xqaDRBO9nt4OGRxgCYhwUGlnV
 lkzTrlhm0lZ/JXvTPPKT5w/OzpOlLWpGKVwJm+927afaec9u8KY459xkaQt8HTMtMQes
 WSag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=WQXRFMB6QQOOwi2RdWzoqRBTu6C+CWLQXA3kqgsHcII=;
 b=cLg7u1DU4rYxKqh6sbaBVTQ00Xv/F2m3VdOsUIXgut+wcE5MwdgGGp9ZPPQ45GbUEn
 jep7qiYStB4FJC7H1XCvJ8UYmQqKSpjS5atQG4PbnIlaby83QJC04rres2cI/0MJSbkP
 xktF7zYWkZeO4FBkDXkToQRTr7Nf1+5aupNzr5UsXd5jcYSLChcU7vZzu8ADLYaDGFM1
 f84+b7gBifg3ZIexbVmVuRgTNveD8Gkn9fMBEac3N4eyvpyXsHvCzLWl5Jthed0aml7W
 B7Glwv8Svd4xg0tqwEpA/sZs6ALEELHEHiDBQqdNzBv61XERlOrTZgjCNMyWoqd05TO6
 TivA==
X-Gm-Message-State: APjAAAVbCJ1PF3t3zM4ti2Y7l2iMG8p25ccBtWoA9bHAKwrlr+f3aHYD
 XifjHUKQOi98VPhKniY+N80h53k=
X-Google-Smtp-Source: APXvYqwCCb28c29NMtjsReSy+71acex+nIEG6wU/iMCbXnaK80xOUHhMLN+hINWm64wZ+DqeT3Uvjg==
X-Received: by 2002:aca:5509:: with SMTP id j9mr1131725oib.138.1566328153503; 
 Tue, 20 Aug 2019 12:09:13 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id o26sm6497542otl.34.2019.08.20.12.09.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 12:09:12 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id 0B8B6180039;
 Tue, 20 Aug 2019 19:09:12 +0000 (UTC)
Date: Tue, 20 Aug 2019 14:09:10 -0500
From: Corey Minyard <minyard@acm.org>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20190820190910.GM5001@minyard.net>
References: <20190820185529.10662-1-tcamuso@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820185529.10662-1-tcamuso@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
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
X-Headers-End: 1i09VP-00AGye-P9
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

On Tue, Aug 20, 2019 at 02:55:29PM -0400, Tony Camuso wrote:
> I think this fixes the deadlock without messing up the message
> sequencing.

Looks good to me.  Queued for next release with a backport to 5.1

Thanks,

-corey

> 
> From 144aa8c3020c72a68a57f5d1496ed9a83d013087 Mon Sep 17 00:00:00 2001
> From: Tony Camuso <tcamuso@redhat.com>
> Date: Tue, 20 Aug 2019 14:51:26 -0400
> Subject: [PATCH] ipmi: move message error checking to avoid deadlock
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
> The fix is to put all messages in the queue and move the message
> checking code out of ipmi_smi_msg_received and into handle_one_recv_msg,
> which processes the message checking after ipmi_thread releases its
> locks.
> 
> Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
> Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
> Signed-off-by: Tony Camuso <tcamuso@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 113 ++++++++++++++++++------------------
>  1 file changed, 56 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 6707659cffd6..0a907cd62dc6 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4215,7 +4215,52 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
>  	int chan;
>  
>  	ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);
> -	if (msg->rsp_size < 2) {
> +
> +	if ((msg->data_size >= 2)
> +	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
> +	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
> +	    && (msg->user_data == NULL)) {
> +
> +		if (intf->in_shutdown)
> +			goto free_msg;
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
> +
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
> +free_msg:
> +		ipmi_free_smi_msg(msg);
> +
> +	} else if (msg->rsp_size < 2) {
>  		/* Message is too small to be correct. */
>  		dev_warn(intf->si_dev,
>  			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
> @@ -4472,62 +4517,16 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  	unsigned long flags = 0; /* keep us warning-free. */
>  	int run_to_completion = intf->run_to_completion;
>  
> -	if ((msg->data_size >= 2)
> -	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
> -	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
> -	    && (msg->user_data == NULL)) {
> -
> -		if (intf->in_shutdown)
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
> -	} else {
> -		/*
> -		 * To preserve message order, we keep a queue and deliver from
> -		 * a tasklet.
> -		 */
> -		if (!run_to_completion)
> -			spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> -		list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> -		if (!run_to_completion)
> -			spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
> -					       flags);
> -	}
> +	/*
> +	 * To preserve message order, we keep a queue and deliver from
> +	 * a tasklet.
> +	 */
> +	if (!run_to_completion)
> +		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> +	list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> +	if (!run_to_completion)
> +		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
> +				       flags);
>  
>  	if (!run_to_completion)
>  		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> -- 
> 2.18.1
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
