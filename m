Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA2D8BA26
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Aug 2019 15:28:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hxWr6-0006zy-01; Tue, 13 Aug 2019 13:28:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1hxWr4-0006zW-De
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 13:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2+XuUfc0t8ZFy3xS6oOcry5dHoTS6e7gP6dkXlBJw8I=; b=ku+Ct+1Wtp6/uoqGZW5nrgBify
 aQSS5b/dVyKy9HQoeJ+XS0yMrpILR+VdwfVqxJzIltytwSZuWJAliJFQfhXgz0ApsHk0E9rzgXFPb
 /ubvR4hgAwpv4AZfq4tgj+A+DQZl8Apa4034Kdnx7DTfQEB9ybRE+r7MUPGHvC8XoA54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2+XuUfc0t8ZFy3xS6oOcry5dHoTS6e7gP6dkXlBJw8I=; b=QH7XEJ9i8FvIAADSsXYe6GC72F
 xcNME39wzkdq7dKMJ6qk/++fTl0ZA1g0ZJwtRcpBJReLAs9nW3xlXWynZC4KvhpA0mluGwwjTiRJn
 opR8unR1kHUCBCo58Q4bLCJGIvrPnGahbBZMFcgzP7gCsG0loNanEuJOvK6SfvmL3MRw=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxWqy-002PSG-Uq
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Aug 2019 13:28:50 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E1263003A49;
 Tue, 13 Aug 2019 13:28:34 +0000 (UTC)
Received: from [10.3.116.137] (ovpn-116-137.phx2.redhat.com [10.3.116.137])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A3A9182AC6;
 Tue, 13 Aug 2019 13:28:33 +0000 (UTC)
To: minyard@acm.org
References: <9a8dad96-4468-bf86-56b7-bb3700d0c064@camusofamily.com>
 <20190813125155.7118-1-tcamuso@redhat.com>
 <20190813130757.GJ5001@minyard.net>
From: tony camuso <tcamuso@redhat.com>
Message-ID: <0c70bcbe-b842-86a6-9b9b-1c1563725cf6@redhat.com>
Date: Tue, 13 Aug 2019 09:28:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813130757.GJ5001@minyard.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 13 Aug 2019 13:28:39 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nec.com]
X-Headers-End: 1hxWqy-002PSG-Uq
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
Cc: cminyard@mvista.com, openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 8/13/19 9:07 AM, Corey Minyard wrote:
> On Tue, Aug 13, 2019 at 08:51:55AM -0400, Tony Camuso wrote:
>> This fixes the problem for the scheduled case, but I don't think it will
>> fix it for the run_to_completion case.
> 
> Locks are turned off in run_to_completion.  So there shouldn't be
> an issue there.
> 
> -corey

Ah! Thanks.

I have a comment correction, below.

>>
>> I'll have to think about that a bit more, unless you have some insight.
>>
>>  From d69ada45a95d9c5bcc95329e5bc16a56cd46cc53 Mon Sep 17 00:00:00 2001
>> From: Tony Camuso <tcamuso@redhat.com>
>> Date: Tue, 13 Aug 2019 08:27:57 -0400
>> Subject: [PATCH] ipmi: move message checking into the tasklet to avoid
>>   deadlocl
>>
>> In the source stack trace below, function set_need_watch tries to
>> take out the same si_lock that was taken earlier by ipmi_thread.
>>
>> ipmi_thread() [drivers/char/ipmi/ipmi_si_intf.c:995]
>>   smi_event_handler() [drivers/char/ipmi/ipmi_si_intf.c:765]
>>    handle_transaction_done() [drivers/char/ipmi/ipmi_si_intf.c:555]
>>     deliver_recv_msg() [drivers/char/ipmi/ipmi_si_intf.c:283]
>>      ipmi_smi_msg_received() [drivers/char/ipmi/ipmi_msghandler.c:4503]
>>       intf_err_seq() [drivers/char/ipmi/ipmi_msghandler.c:1149]
>>        smi_remove_watch() [drivers/char/ipmi/ipmi_msghandler.c:999]
>>         set_need_watch() [drivers/char/ipmi/ipmi_si_intf.c:1066]
>>
>> Upstream commit e1891cffd4c4896a899337a243273f0e23c028df adds code to
>> ipmi_smi_msg_received() to call smi_remove_watch() via intf_err_seq()
>> and this seems to be causing the deadlock.
>>
>> commit e1891cffd4c4896a899337a243273f0e23c028df
>> Author: Corey Minyard <cminyard@mvista.com>
>> Date:   Wed Oct 24 15:17:04 2018 -0500
>>      ipmi: Make the smi watcher be disabled immediately when not needed
>>
>> The fix is to move the message checking code out of ipmi_smi_msg_received
>> and into smi_recv_tasklet, which processes the message checking after
>> ipmi_smi_msg_received releases its locks.
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Should say, "ipmi_thread releases its locks".


>>
>> Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
>> Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
>> Signed-off-by: Tony Camuso <tcamuso@redhat.com>
>> ---
>>   drivers/char/ipmi/ipmi_msghandler.c | 98 ++++++++++++++++++-------------------
>>   1 file changed, 49 insertions(+), 49 deletions(-)
>>
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index 6707659cffd6e..13402483f2623 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -4426,6 +4426,54 @@ static void smi_recv_tasklet(unsigned long val)
>>   	struct ipmi_smi *intf = (struct ipmi_smi *) val;
>>   	int run_to_completion = intf->run_to_completion;
>>   	struct ipmi_smi_msg *newmsg = NULL;
>> +	struct ipmi_smi_msg *msg = intf->curr_msg;
>> +
>> +	if (msg != NULL) {
>> +
>> +		/*
>> +		 * This is the local response to a command send, start
>> +		 * the timer for these.  The user_data will not be
>> +		 * NULL if this is a response send, and we will let
>> +		 * response sends just go through.
>> +		 */
>> +
>> +		/*
>> +		 * Check for errors, if we get certain errors (ones
>> +		 * that mean basically we can try again later), we
>> +		 * ignore them and start the timer.  Otherwise we
>> +		 * report the error immediately.
>> +		 */
>> +		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
>> +		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
>> +		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
>> +		    && (msg->rsp[2] != IPMI_BUS_ERR)
>> +		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
>> +			int ch = msg->rsp[3] & 0xf;
>> +			struct ipmi_channel *chans;
>> +
>> +			/* Got an error sending the message, handle it. */
>> +			chans = READ_ONCE(intf->channel_list)->c;
>> +			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
>> +			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
>> +				ipmi_inc_stat(intf, sent_lan_command_errs);
>> +			else
>> +				ipmi_inc_stat(intf, sent_ipmb_command_errs);
>> +			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
>> +		} else
>> +			/* The message was sent, start the timer. */
>> +			intf_start_seq_timer(intf, msg->msgid);
>> +
>> +		if (!run_to_completion)
>> +			spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
>> +		/*
>> +		 * We can get an asynchronous event or receive message in addition
>> +		 * to commands we send.
>> +		 */
>> +		if (msg == intf->curr_msg)
>> +			intf->curr_msg = NULL;
>> +		if (!run_to_completion)
>> +			spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>> +	}
>>   
>>   	/*
>>   	 * Start the next message if available.
>> @@ -4478,44 +4526,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>>   	    && (msg->user_data == NULL)) {
>>   
>>   		if (intf->in_shutdown)
>> -			goto free_msg;
>> -
>> -		/*
>> -		 * This is the local response to a command send, start
>> -		 * the timer for these.  The user_data will not be
>> -		 * NULL if this is a response send, and we will let
>> -		 * response sends just go through.
>> -		 */
>> -
>> -		/*
>> -		 * Check for errors, if we get certain errors (ones
>> -		 * that mean basically we can try again later), we
>> -		 * ignore them and start the timer.  Otherwise we
>> -		 * report the error immediately.
>> -		 */
>> -		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
>> -		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
>> -		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
>> -		    && (msg->rsp[2] != IPMI_BUS_ERR)
>> -		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
>> -			int ch = msg->rsp[3] & 0xf;
>> -			struct ipmi_channel *chans;
>> -
>> -			/* Got an error sending the message, handle it. */
>> -
>> -			chans = READ_ONCE(intf->channel_list)->c;
>> -			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
>> -			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
>> -				ipmi_inc_stat(intf, sent_lan_command_errs);
>> -			else
>> -				ipmi_inc_stat(intf, sent_ipmb_command_errs);
>> -			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
>> -		} else
>> -			/* The message was sent, start the timer. */
>> -			intf_start_seq_timer(intf, msg->msgid);
>> -
>> -free_msg:
>> -		ipmi_free_smi_msg(msg);
>> +			ipmi_free_smi_msg(msg);
>>   	} else {
>>   		/*
>>   		 * To preserve message order, we keep a queue and deliver from
>> @@ -4529,17 +4540,6 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>>   					       flags);
>>   	}
>>   
>> -	if (!run_to_completion)
>> -		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
>> -	/*
>> -	 * We can get an asynchronous event or receive message in addition
>> -	 * to commands we send.
>> -	 */
>> -	if (msg == intf->curr_msg)
>> -		intf->curr_msg = NULL;
>> -	if (!run_to_completion)
>> -		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>> -
>>   	if (run_to_completion)
>>   		smi_recv_tasklet((unsigned long) intf);
>>   	else
>> -- 
>> 2.21.0
>>
>>
>>
>> _______________________________________________
>> Openipmi-developer mailing list
>> Openipmi-developer@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/openipmi-developer



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
