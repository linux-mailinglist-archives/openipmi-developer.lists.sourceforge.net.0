Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D40AF99896
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2019 17:53:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0pPM-0000BV-Ss; Thu, 22 Aug 2019 15:53:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1i0pPG-0000BG-1Z
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 15:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bMTopCa1AWX5BvOHN7IkQvC+zebw8y6aAOV2FsWnAfo=; b=No0OB0jYEvBRjrm0Fih8ec/OA7
 /OTPvJbZ3KCMi0klxAeJCse0c1/3FRnS3pxYQ16bsVAFTIjKiGJQ0VlCcSsC4HqJCAKGiV+zg68TL
 eQgO+FFfBz84/QaOAGp3zYY/razgBhsEmj4ra+RoJUJb9KEMDtXivwZ6L88XIk/QwfQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bMTopCa1AWX5BvOHN7IkQvC+zebw8y6aAOV2FsWnAfo=; b=UPJHV3E0Sh4M6f1nmWTqOUhDkU
 wNNHP2KcEiTa1h0peIqL/iU6UEUa8FREWY5G/4C3GlqThV8nBqCrnNpnuhRAUhjc0yiSRXAuY6M5W
 i9qRsZuN7LFfIBtN18ESnTNLI027BL9pEC/llv8ymRDDryfvNaOYnlyeWM1khzdEMpRk=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0pP7-00CRIa-M4
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 15:53:45 +0000
Received: by mail-oi1-f182.google.com with SMTP id n1so4735987oic.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2019 08:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bMTopCa1AWX5BvOHN7IkQvC+zebw8y6aAOV2FsWnAfo=;
 b=RZjykbvtQynT66B14QzJzgZTw+upHz8S9ztOXqmPIC6b0NxZojfCrpgEgAgKHAI9i8
 Kph2MEwyR4C5qY06MeimgnBZPcu8CJMF6fgzLQ1jQc0eg290MjddBMyLzXjH2IE2AHgl
 2avzYi8fbEzsn/ws9se+SNTaZmN+zNSo7qKXon7Gg8+w/V/Sm31wVwL8beIG1Ny2ju50
 +K2Xqt0KRvvs+EnFSvkllPxly0IjodvKS4j07hA5ssq9lp/e3Ln+FUprZrxwThZWmTDf
 G8BWYZBkIkYWJyM1Uhypr/eWy0afLUHtPlI2op7iqzLIv8auuqvppE2VFWBSKDIlYXrJ
 kRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bMTopCa1AWX5BvOHN7IkQvC+zebw8y6aAOV2FsWnAfo=;
 b=SFjPELP9wODoOlmtJT6rZ2s0vrWf0jU7WoNSXZDZErj156otnwt5QTxKoSkqaWWH0l
 /9Un5jdd/ga1ZscMYa0jAQHT/5zS9zlyH9AhxcFyIyhgNQHM+C1lqHBB8un+EQpPYrHw
 L83Vb8cCMOmc3DcWobEZ+mFAZ/OA5dh1yGz+OJpt1VNyq6I9tt2crZg+1i9c8Vvd/QMR
 teHgeRp4KvLdLbUVEuNElarFds9wxQR+n6kRk3kgdmTaEbuep/WFQDtfpy2L1CDY2+TG
 NroPjzyLAYqSW8Nm3SMeMYOMrsbgUJhp4FC8rV4qUnOiz+kxHBR6mzim3L+CYxqg3Cx0
 3ywQ==
X-Gm-Message-State: APjAAAURYCXp4nxJPGUsNDM2eAuLreExB5/HpjdpQXOolapHs2BkHvXo
 d921xBGInwCJ3M+ywqXxq2uPN+B5wiGgIA==
X-Google-Smtp-Source: APXvYqw0aTNTllj20ftGUTaSdLWeMxPDDgo6hXhq6WYn64scUTouon8lhWStuPf5snXH6Oq+T72+oQ==
X-Received: by 2002:aca:1a02:: with SMTP id a2mr4029622oia.32.1566487801217;
 Thu, 22 Aug 2019 08:30:01 -0700 (PDT)
Received: from minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id k67sm9582028otk.26.2019.08.22.08.30.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 08:30:00 -0700 (PDT)
Date: Thu, 22 Aug 2019 10:29:59 -0500
From: Corey Minyard <cminyard@mvista.com>
To: tony camuso <tcamuso@redhat.com>
Message-ID: <20190822152959.GY445@minyard.net>
References: <20190820185529.10662-1-tcamuso@redhat.com>
 <20190820190910.GM5001@minyard.net>
 <23add244-55f0-14cb-5a35-7f4711381a75@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23add244-55f0-14cb-5a35-7f4711381a75@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i0pP7-00CRIa-M4
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

On Thu, Aug 22, 2019 at 07:59:28AM -0400, tony camuso wrote:
> On 8/20/19 3:09 PM, Corey Minyard wrote:
> > On Tue, Aug 20, 2019 at 02:55:29PM -0400, Tony Camuso wrote:
> > > I think this fixes the deadlock without messing up the message
> > > sequencing.
> > 
> > Looks good to me.  Queued for next release with a backport to 5.1
> > 
> > Thanks,
> > 
> > -corey
> 
> Corey,
> 
> There's a bug in this patch reported by NEC.
> 
> ipmi_free_smi_msg is called too soon.
> 
> I will submit a new patch with the incorporated fix shortly.

Yeah, I should have spotted that.  You shouldn't free the message
in that function, it is freed in the caller.

Sorry about that.

-corey

> 
> 
> > 
> > > 
> > >  From 144aa8c3020c72a68a57f5d1496ed9a83d013087 Mon Sep 17 00:00:00 2001
> > > From: Tony Camuso <tcamuso@redhat.com>
> > > Date: Tue, 20 Aug 2019 14:51:26 -0400
> > > Subject: [PATCH] ipmi: move message error checking to avoid deadlock
> > > 
> > > In the source stack trace below, function set_need_watch tries to
> > > take out the same si_lock that was taken earlier by ipmi_thread.
> > > 
> > > ipmi_thread() [drivers/char/ipmi/ipmi_si_intf.c:995]
> > >   smi_event_handler() [drivers/char/ipmi/ipmi_si_intf.c:765]
> > >    handle_transaction_done() [drivers/char/ipmi/ipmi_si_intf.c:555]
> > >     deliver_recv_msg() [drivers/char/ipmi/ipmi_si_intf.c:283]
> > >      ipmi_smi_msg_received() [drivers/char/ipmi/ipmi_msghandler.c:4503]
> > >       intf_err_seq() [drivers/char/ipmi/ipmi_msghandler.c:1149]
> > >        smi_remove_watch() [drivers/char/ipmi/ipmi_msghandler.c:999]
> > >         set_need_watch() [drivers/char/ipmi/ipmi_si_intf.c:1066]
> > > 
> > > Upstream commit e1891cffd4c4896a899337a243273f0e23c028df adds code to
> > > ipmi_smi_msg_received() to call smi_remove_watch() via intf_err_seq()
> > > and this seems to be causing the deadlock.
> > > 
> > > commit e1891cffd4c4896a899337a243273f0e23c028df
> > > Author: Corey Minyard <cminyard@mvista.com>
> > > Date:   Wed Oct 24 15:17:04 2018 -0500
> > >      ipmi: Make the smi watcher be disabled immediately when not needed
> > > 
> > > The fix is to put all messages in the queue and move the message
> > > checking code out of ipmi_smi_msg_received and into handle_one_recv_msg,
> > > which processes the message checking after ipmi_thread releases its
> > > locks.
> > > 
> > > Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
> > > Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
> > > Signed-off-by: Tony Camuso <tcamuso@redhat.com>
> > > ---
> > >   drivers/char/ipmi/ipmi_msghandler.c | 113 ++++++++++++++++++------------------
> > >   1 file changed, 56 insertions(+), 57 deletions(-)
> > > 
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index 6707659cffd6..0a907cd62dc6 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -4215,7 +4215,52 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
> > >   	int chan;
> > >   	ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);
> > > -	if (msg->rsp_size < 2) {
> > > +
> > > +	if ((msg->data_size >= 2)
> > > +	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
> > > +	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
> > > +	    && (msg->user_data == NULL)) {
> > > +
> > > +		if (intf->in_shutdown)
> > > +			goto free_msg;
> > > +
> > > +		/*
> > > +		 * This is the local response to a command send, start
> > > +		 * the timer for these.  The user_data will not be
> > > +		 * NULL if this is a response send, and we will let
> > > +		 * response sends just go through.
> > > +		 */
> > > +
> > > +		/*
> > > +		 * Check for errors, if we get certain errors (ones
> > > +		 * that mean basically we can try again later), we
> > > +		 * ignore them and start the timer.  Otherwise we
> > > +		 * report the error immediately.
> > > +		 */
> > > +		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
> > > +		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
> > > +		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
> > > +		    && (msg->rsp[2] != IPMI_BUS_ERR)
> > > +		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
> > > +			int ch = msg->rsp[3] & 0xf;
> > > +			struct ipmi_channel *chans;
> > > +
> > > +			/* Got an error sending the message, handle it. */
> > > +
> > > +			chans = READ_ONCE(intf->channel_list)->c;
> > > +			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
> > > +			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
> > > +				ipmi_inc_stat(intf, sent_lan_command_errs);
> > > +			else
> > > +				ipmi_inc_stat(intf, sent_ipmb_command_errs);
> > > +			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
> > > +		} else
> > > +			/* The message was sent, start the timer. */
> > > +			intf_start_seq_timer(intf, msg->msgid);
> > > +free_msg:
> > > +		ipmi_free_smi_msg(msg);
> > > +
> > > +	} else if (msg->rsp_size < 2) {
> > >   		/* Message is too small to be correct. */
> > >   		dev_warn(intf->si_dev,
> > >   			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
> > > @@ -4472,62 +4517,16 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
> > >   	unsigned long flags = 0; /* keep us warning-free. */
> > >   	int run_to_completion = intf->run_to_completion;
> > > -	if ((msg->data_size >= 2)
> > > -	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
> > > -	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
> > > -	    && (msg->user_data == NULL)) {
> > > -
> > > -		if (intf->in_shutdown)
> > > -			goto free_msg;
> > > -
> > > -		/*
> > > -		 * This is the local response to a command send, start
> > > -		 * the timer for these.  The user_data will not be
> > > -		 * NULL if this is a response send, and we will let
> > > -		 * response sends just go through.
> > > -		 */
> > > -
> > > -		/*
> > > -		 * Check for errors, if we get certain errors (ones
> > > -		 * that mean basically we can try again later), we
> > > -		 * ignore them and start the timer.  Otherwise we
> > > -		 * report the error immediately.
> > > -		 */
> > > -		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
> > > -		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
> > > -		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
> > > -		    && (msg->rsp[2] != IPMI_BUS_ERR)
> > > -		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
> > > -			int ch = msg->rsp[3] & 0xf;
> > > -			struct ipmi_channel *chans;
> > > -
> > > -			/* Got an error sending the message, handle it. */
> > > -
> > > -			chans = READ_ONCE(intf->channel_list)->c;
> > > -			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
> > > -			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
> > > -				ipmi_inc_stat(intf, sent_lan_command_errs);
> > > -			else
> > > -				ipmi_inc_stat(intf, sent_ipmb_command_errs);
> > > -			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
> > > -		} else
> > > -			/* The message was sent, start the timer. */
> > > -			intf_start_seq_timer(intf, msg->msgid);
> > > -
> > > -free_msg:
> > > -		ipmi_free_smi_msg(msg);
> > > -	} else {
> > > -		/*
> > > -		 * To preserve message order, we keep a queue and deliver from
> > > -		 * a tasklet.
> > > -		 */
> > > -		if (!run_to_completion)
> > > -			spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> > > -		list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> > > -		if (!run_to_completion)
> > > -			spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
> > > -					       flags);
> > > -	}
> > > +	/*
> > > +	 * To preserve message order, we keep a queue and deliver from
> > > +	 * a tasklet.
> > > +	 */
> > > +	if (!run_to_completion)
> > > +		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> > > +	list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
> > > +	if (!run_to_completion)
> > > +		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
> > > +				       flags);
> > >   	if (!run_to_completion)
> > >   		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
> > > -- 
> > > 2.18.1
> > > 
> > > 
> > > 
> > > _______________________________________________
> > > Openipmi-developer mailing list
> > > Openipmi-developer@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/openipmi-developer
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
