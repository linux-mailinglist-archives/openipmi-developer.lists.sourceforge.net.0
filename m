Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 030B4998ED
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2019 18:13:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0piW-0007Gx-Bn; Thu, 22 Aug 2019 16:13:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1i0piQ-0007Fy-7T
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lKBnj4XzHn4ndPS1mo/iQ5031dc7z9ubSORloBVS7sQ=; b=iIzLD1JTFEWeNT+dJh7LPt0KCR
 m4kMpK0ebkBbBsbFTM8oEz6rwQl5TYBRtDD0DgwCy5d8SZbec+v0oEP5bEbBNy9L7KUVW/SvSpdsh
 UyE5AY0p0XvD28D2qJHMrbDmrQ0cK0YMNKnzymhWfBJmPOFA0pLhc8WWw3B68tbMMhCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lKBnj4XzHn4ndPS1mo/iQ5031dc7z9ubSORloBVS7sQ=; b=k29tUhc7UsYPbtsD/evs18d24B
 w+Kk/vZ1b5XJBXgBQ4+qx/4mup9Zs/KOfMszVGgB8uFqrzcibOQRjwW6Bj4WRTxX/60BhowrPuBcI
 YeJciwQu+/BvmYAoQOnNNgigyl4WJhMb7olEJOI4FvRYkkaSm26jJbUR4CBJ15NsZG9U=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0piA-00CSim-Mm
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:13:34 +0000
Received: by mail-ot1-f66.google.com with SMTP id w4so5932401ote.11
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2019 09:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lKBnj4XzHn4ndPS1mo/iQ5031dc7z9ubSORloBVS7sQ=;
 b=IQBU+M1Y+/ymI+mVHF00Xnxsn7iEwaVG2MJVKEY8DQ/Va7hNGTm+GSM3eIQkmN9xuW
 1n8K524oNLnZmfA7ytpVaaMMHt5mg30mBRm7PE/Dlco+bkA0YYfJ1yvxyITjjYIB4Apx
 /HnFgcaoKvJ6IsdQKPI2ignpKvKqzmpsMkBmGWe6nF1xjST/fxeflqBs6d978oxpHyM/
 2XawWlL2Tz4APCXaXptVaPX4swxqFR2W63wlJzCloVe4H1k/HDfl97SM7vThL6uQZpXP
 o5KekBfnTx9Yk7bz3Z3xRaQJMzFI2/cSZOBhBFIkCKvg5ZkokFaJoKfP36+GaO+IOTKX
 ouqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lKBnj4XzHn4ndPS1mo/iQ5031dc7z9ubSORloBVS7sQ=;
 b=PXJw0Iac6SOzSj98Yqr0sXc9Nznab7MyiMuwkC073a73ROESTrKcbYcb4put441B6w
 R5aerXMNhKKS1SemXiSggByQlOuZ4ouUbbI2l/PrcedHMkpfQIiUFRkdYcNL4TlmXGF0
 PCsCtljZlE1xppoZc68ZJmu01HyprzilcvmpQG1/PMTHn3J4fIbG57UXwfBw9+i0h1Ec
 b5diW9z28bLGRHrv2Xj2Jr2XuHh/w2YU7NcdKj/phXhwl4VWdWdzmOtii8ntW7JC5fAk
 EKbqfQcdZBgZ71vSTTsq343DX3s4tle6sZ8R3XmrH7PVa3YFwNdlunvAOnWUaV1CM4Qr
 KMjA==
X-Gm-Message-State: APjAAAWrhMD+Q2ZA9lor0HyT5WiTCz04Iy7F1of59zXAcMu2N2oR2rqy
 /fDgJk85X4QtFRW4qsCLrXF/S7Eb9pEePA==
X-Google-Smtp-Source: APXvYqyeNyNvzclbUNEOdCbxSHyXaG7PiGCoMf80P1odTnn29nt2JQGUQOVvSV8EAQzZnbTaIlgWlw==
X-Received: by 2002:a9d:7cc9:: with SMTP id r9mr360890otn.188.1566490392720;
 Thu, 22 Aug 2019 09:13:12 -0700 (PDT)
Received: from minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id 44sm9769553otf.30.2019.08.22.09.13.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 09:13:12 -0700 (PDT)
Date: Thu, 22 Aug 2019 11:13:10 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20190822161309.GZ445@minyard.net>
References: <20190822140505.11946-1-tcamuso@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822140505.11946-1-tcamuso@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1i0piA-00CSim-Mm
Subject: Re: [Openipmi-developer] Hi, Corey.
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

On Thu, Aug 22, 2019 at 10:05:05AM -0400, Tony Camuso wrote:
> This includes the fix for the bug I introduced in the last patch.

Got it, thanks for the update.

In the future, could you send patches with git send-email and put
comments after the --- line?  It looks like you are using
git format-patch and then inserting it into an email, which
means I have to save it in a file, edit it, then use git am.
Plus I'm getting "Corey," as the subject line for some strange
reason.  Most kernel maintainers probably won't take patches that
way.

-corey

> 
> From bca3736afa746dcd92ebf1b04417462dcd46283c Mon Sep 17 00:00:00 2001
> From: Tony Camuso <tcamuso@redhat.com>
> Date: Thu, 22 Aug 2019 08:24:53 -0400
> Subject: [PATCH v2] ipmi: move message error checking to avoid deadlock
> 
> V1->V2: in handle_one_rcv_msg, if data_size > 2, set requeue to zero and
>         goto out instead of calling ipmi_free_msg.
>         Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
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
> Additionally,Kosuke Tatsukawa <tatsu@ab.jp.nec.com> reported that
> handle_new_recv_msgs calls ipmi_free_msg when handle_one_rcv_msg returns
> zero, so that the call to ipmi_free_msg in handle_one_rcv_msg introduced
> another panic when "ipmitool sensor list" was run in a loop. He
> submitted this part of the patch.
> 
> +free_msg:
> +               requeue = 0;
> +               goto out;
> 
> Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
> Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
> Signed-off-by: Tony Camuso <tcamuso@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 114 ++++++++++++++++++------------------
>  1 file changed, 57 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 0dcea9d256a0..57ca446f6a60 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4206,7 +4206,53 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
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
> +		requeue = 0;
> +		goto out;
> +
> +	} else if (msg->rsp_size < 2) {
>  		/* Message is too small to be correct. */
>  		dev_warn(intf->si_dev,
>  			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
> @@ -4463,62 +4509,16 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
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


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
