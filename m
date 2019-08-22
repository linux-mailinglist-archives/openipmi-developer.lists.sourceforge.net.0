Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D109997C
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2019 18:45:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0qDJ-000371-MY; Thu, 22 Aug 2019 16:45:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1i0qDD-00036J-Lo
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jv2Rm5y3KkiSVPFFNJosHSIv+ncQYDx4pWkGLZzWGMk=; b=IKHH6O1MF924UGMjddBArZ5IoA
 U2n9LtMnGiPvKeO7jWEVHZEbpiSlacKRrXglOdPicDzEZrVVkAJRU0WoDhpHixOmPPc+p4vDVT08v
 ZcBRcQ2kzKXfdLLY0p9xHj4Cqvvn34VAYJTqfGFHfnrUQ2hxYNG/rvF5epy8wd+Lf3rE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jv2Rm5y3KkiSVPFFNJosHSIv+ncQYDx4pWkGLZzWGMk=; b=DRxVUOM6xf0VcqUH5iG9t/dWvf
 QAo+sC05ozBAhEskAg678My9fSbe/WByicoCY5yuAe52N9F32xtXCJSGKMjSDYf04GTjgR1rpAhnT
 RkVvx0qrq5sfpZu380JpKt8b3obrzV34y7375wP+dvtBobiJcojMVrtcwkYdf0XthmUA=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0qCy-00GEDC-B2
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:45:23 +0000
Received: by mail-oi1-f195.google.com with SMTP id t24so4823435oij.13
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2019 09:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jv2Rm5y3KkiSVPFFNJosHSIv+ncQYDx4pWkGLZzWGMk=;
 b=H+6UZbKRubZdnqWZvo2OLFutQrD1QUSTlAI0uCLvvRa+kEVHLYMtzytdGIj893UAAq
 EYiA6hmvEpm/P8/ldXHL/hXyX4+ACkWXqYnHiVfjKBkRFlRs6vfqxRY6FRXLdhegBK3q
 JSHUHpEFaMOro1Qmrf5yLjUfGEAlAbzh1ccxRxKVr+UaydMOSumtgXF8OfGsBUrkUCYS
 M/7HbfkctyMhSitE6Z8U3HuJ1lI8WQU/JIP1UqMK7pd6IqGFGNBSU/KctWQVjXRKN+3I
 uur88PggQJ3tFPXc7EWavhrO/K3hSc4r1q6vZhTyGLZtgzzRF/sIB1VKDBa/RxRJ/z4S
 URWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jv2Rm5y3KkiSVPFFNJosHSIv+ncQYDx4pWkGLZzWGMk=;
 b=mnHMhMol0FUi1Tv72fhyps9QUWdNbyGN0BKJ87d0ByUSnGEftbrcn5dPhPQlGmBevA
 QbuYM5pnW35hOGa7ensMsKTbggKEnN6UasurkL9CGRgwfckrXYvSAfZ4hudOAMJl+SrG
 5nEcuDprV3EO4pEYsdBUCY+0WAO2I0agaOBVzkl7xMbTgq5SiE1sLWXKV1DC5rtqnwkl
 le/Z7w4XsZ0i0VAC2GCEcQbcdtlLWREYJg+KQo5GIX3f+nKqfkKgd9TzWYSY/lp6RVU9
 HBEnCaXcVc9Cly653wOOo9aUQnhDndcUafXm7SfKZPfuNJsguKfAktyuDaYTgmIR3vfV
 kFwg==
X-Gm-Message-State: APjAAAU7G/cik8D2HFvR4fomQGBd0SDqg4ellCrRa/pyISFnD/88xyJ0
 aAoZgs/2GYpm+vNdYoV6gdgY3w==
X-Google-Smtp-Source: APXvYqxt1+LY/Obo3iVULyVWx3qlF0cWKJX2o0GmmRjmE+SeOd1ElLXREvElS1DygrW2xQO/5Tcmjw==
X-Received: by 2002:aca:5c57:: with SMTP id q84mr62944oib.176.1566492302265;
 Thu, 22 Aug 2019 09:45:02 -0700 (PDT)
Received: from minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id n19sm1765995oic.46.2019.08.22.09.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 09:45:01 -0700 (PDT)
Date: Thu, 22 Aug 2019 11:44:59 -0500
From: Corey Minyard <cminyard@mvista.com>
To: tony camuso <tcamuso@redhat.com>
Message-ID: <20190822164459.GB445@minyard.net>
References: <20190822140505.11946-1-tcamuso@redhat.com>
 <20190822161309.GZ445@minyard.net>
 <4c3d66ff-69bc-b1cd-a7c3-45e0c372e287@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c3d66ff-69bc-b1cd-a7c3-45e0c372e287@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1i0qCy-00GEDC-B2
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

On Thu, Aug 22, 2019 at 12:18:07PM -0400, tony camuso wrote:
> On 8/22/19 12:13 PM, Corey Minyard wrote:
> > On Thu, Aug 22, 2019 at 10:05:05AM -0400, Tony Camuso wrote:
> > > This includes the fix for the bug I introduced in the last patch.
> > 
> > Got it, thanks for the update.
> > 
> > In the future, could you send patches with git send-email and put
> > comments after the --- line?  It looks like you are using
> > git format-patch and then inserting it into an email, which
> > means I have to save it in a file, edit it, then use git am.
> > Plus I'm getting "Corey," as the subject line for some strange
> > reason.  Most kernel maintainers probably won't take patches that
> > way.
> > 
> > -corey
> 
> Yes, sorry about that. I'm using git send-email --annotate.
> I'm just putting my note in the wrong place.
> 
> Do you need me to resend?

No, it's not a big deal, I'm just trying to avoid you getting
a hostile response in some other situation :).

-corey

> 
> > 
> > > 
> > >  From bca3736afa746dcd92ebf1b04417462dcd46283c Mon Sep 17 00:00:00 2001
> > > From: Tony Camuso <tcamuso@redhat.com>
> > > Date: Thu, 22 Aug 2019 08:24:53 -0400
> > > Subject: [PATCH v2] ipmi: move message error checking to avoid deadlock
> > > 
> > > V1->V2: in handle_one_rcv_msg, if data_size > 2, set requeue to zero and
> > >          goto out instead of calling ipmi_free_msg.
> > >          Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
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
> > > Additionally,Kosuke Tatsukawa <tatsu@ab.jp.nec.com> reported that
> > > handle_new_recv_msgs calls ipmi_free_msg when handle_one_rcv_msg returns
> > > zero, so that the call to ipmi_free_msg in handle_one_rcv_msg introduced
> > > another panic when "ipmitool sensor list" was run in a loop. He
> > > submitted this part of the patch.
> > > 
> > > +free_msg:
> > > +               requeue = 0;
> > > +               goto out;
> > > 
> > > Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
> > > Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
> > > Signed-off-by: Tony Camuso <tcamuso@redhat.com>
> > > ---
> > >   drivers/char/ipmi/ipmi_msghandler.c | 114 ++++++++++++++++++------------------
> > >   1 file changed, 57 insertions(+), 57 deletions(-)
> > > 
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index 0dcea9d256a0..57ca446f6a60 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -4206,7 +4206,53 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
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
> > > +		requeue = 0;
> > > +		goto out;
> > > +
> > > +	} else if (msg->rsp_size < 2) {
> > >   		/* Message is too small to be correct. */
> > >   		dev_warn(intf->si_dev,
> > >   			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
> > > @@ -4463,62 +4509,16 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
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
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
