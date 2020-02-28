Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 820D1173EBF
	for <lists+openipmi-developer@lfdr.de>; Fri, 28 Feb 2020 18:45:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j7jh3-00040V-VO; Fri, 28 Feb 2020 17:44:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j7jh3-00040O-AB
 for openipmi-developer@lists.sourceforge.net; Fri, 28 Feb 2020 17:44:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6odYFUxjVW/kDM7K5IcOeiMB98fdGcFmNhxPrV1QxrU=; b=lcIuyytKtJ1xegHX8cMKLyt4Uf
 Sq4IY+BF006s2iIsGPTTuCP7+TOdOIkC3DW9CGlt9L2YsdgCi1OouUIVJTKywBMCAcwMiStcXEDVr
 r+eh/eWX09d0aAgyY2IxkZ2PvyX1ciN0DLBOsON13iu6BpQsC9tCLatVj1BaKmzZrFKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6odYFUxjVW/kDM7K5IcOeiMB98fdGcFmNhxPrV1QxrU=; b=aN1mw7+0/Kbnwbwn4UAV3VpLPM
 TUcImfInWEw4cCMA4Xt2j1QesSXLLrxYAGEdm9dFs7WdXaZox+/TO2xNW3faOr8X7JMWG5RFAzgs8
 dpJG3RVqWbary1+9y6x24kh0RyUCWzueViSsZJrhh9CNhzI8Gz5kjxdQ8210CkU0PdWw=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j7jgy-008gqD-UB
 for openipmi-developer@lists.sourceforge.net; Fri, 28 Feb 2020 17:44:57 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so3610805oif.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 28 Feb 2020 09:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6odYFUxjVW/kDM7K5IcOeiMB98fdGcFmNhxPrV1QxrU=;
 b=V29Two3r82q98dZeBM8vjtTnh4rtjYfE/b+k+qyZkB2v9hKgV+JjnFRFuUjmUzdBQA
 0GcFHi7BeduXmq1vX3nVHW72D4KlZ7eaRFmE6zzFfGvFNmEAghDjNz9eEkg/vs0mg50B
 GMucagJBbOl9NLxr5lbj0PIAj/NgKdwAoY4UcZkttVVChdRSQb5zFiCcj9VjzSXCBD6v
 Pd3HyaWLybtEcbvcN15qMIODpYm8NW8dBgee848eX+7C51WlVZmf9Ezobx/TFCoRTMdq
 NmJ3deWyqIJ7NBXKf7d2h+iGJfsfVD9D3Uw1f7DWNE5V6VzNfSylICGL5cwKKhnUgflG
 AXjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=6odYFUxjVW/kDM7K5IcOeiMB98fdGcFmNhxPrV1QxrU=;
 b=o2y52LMLJmWofD6KHjtNUc5ix0dVxZpGPlgpZduEl3tIswVsF8MlKcMY44J1kB+02C
 micgjFRv/QH9byk0UDw12SIQ3cqVvLXglnZm9tJq/I8kIXrxFuElb0YDT/T2Bp0uvxbK
 n/J9e13X5cL5GdfzqlVCSUFRxDCkeOrOdmn1pqNTuzZSSW+uGEVs2C6u8OHTn+YIxZpC
 DJ65QdQ14N5AcQZi4a8WlktnHr0psOMqXrlRhAePpj99y10nOahdamuFQv83TUCKq+ps
 h8tjLABTZDa5gRNq800BLCEKa0qDXD/mz1tLUX2qgcsUly2IOgQY+GmQcnFfsPpzRpBT
 9oYQ==
X-Gm-Message-State: APjAAAXLbsoiczAaX08B9CwgrUUR/aHPhryw+EopvJpzWxwR9Amzr/vP
 8xez943dcwlPwgBFHWR/vw==
X-Google-Smtp-Source: APXvYqwiBFJA4p21dMu8dX7+zOpbTosOuJ9GQtz8NCddtM7ZChaF3RUnufWiwb89RdwCubODYR6/bA==
X-Received: by 2002:aca:33d5:: with SMTP id z204mr3781165oiz.120.1582911886930; 
 Fri, 28 Feb 2020 09:44:46 -0800 (PST)
Received: from serve.minyard.net ([47.184.141.150])
 by smtp.gmail.com with ESMTPSA id g5sm3328290otp.10.2020.02.28.09.44.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 09:44:46 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:44b4:3c45:39b0:ab94])
 by serve.minyard.net (Postfix) with ESMTPSA id D09A818000D;
 Fri, 28 Feb 2020 17:44:45 +0000 (UTC)
Date: Fri, 28 Feb 2020 11:44:44 -0600
From: Corey Minyard <minyard@acm.org>
To: Amol Grover <frextrite@gmail.com>
Message-ID: <20200228174444.GE3840@minyard.net>
References: <20200228081731.18149-1-frextrite@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228081731.18149-1-frextrite@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1j7jgy-008gqD-UB
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix RCU list lockdep
 debugging warnings
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
Cc: "Paul E . Mckenney" <paulmck@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Feb 28, 2020 at 01:47:33PM +0530, Amol Grover wrote:
> It is completely safe to traverse ipmi_interfaces and
> intf->users under SRCU read lock using list_for_each_entry_rcu().
> Tell lockdep about it as well else it will show false-positive
> warnings as the one below.

Thanks, this is queued for 5.7, and I hadded John Garry's test by.

-corey

> 
> Fixes the following false-positive warning and others that may follow.
> 
> [   29.772408] =============================
> [   29.776863] WARNING: suspicious RCU usage
> [   29.780915] 5.6.0-rc3-00001-g907305ae6618-dirty #1755 Not tainted
> [   29.787046] -----------------------------
> [   29.791100] drivers/char/ipmi/ipmi_msghandler.c:744 RCU-list traversed in
> non-reader section!!
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Suggested-by: Paul E. McKenney <paulmck@kernel.org>
> Signed-off-by: Amol Grover <frextrite@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index cad9563f8f48..d202022c69de 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -741,7 +741,8 @@ int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
>  	list_add(&watcher->link, &smi_watchers);
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>  		int intf_num = READ_ONCE(intf->intf_num);
>  
>  		if (intf_num == -1)
> @@ -1188,7 +1189,8 @@ int ipmi_create_user(unsigned int          if_num,
>  		return -ENOMEM;
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>  		if (intf->intf_num == if_num)
>  			goto found;
>  	}
> @@ -1241,7 +1243,8 @@ int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data)
>  	struct ipmi_smi *intf;
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>  		if (intf->intf_num == if_num)
>  			goto found;
>  	}
> @@ -4098,7 +4101,8 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>  	 * getting events.
>  	 */
>  	index = srcu_read_lock(&intf->users_srcu);
> -	list_for_each_entry_rcu(user, &intf->users, link) {
> +	list_for_each_entry_rcu(user, &intf->users, link,
> +				srcu_read_lock_held(&intf->users_srcu)) {
>  		if (!user->gets_events)
>  			continue;
>  
> @@ -4453,7 +4457,8 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  		int index;
>  
>  		index = srcu_read_lock(&intf->users_srcu);
> -		list_for_each_entry_rcu(user, &intf->users, link) {
> +		list_for_each_entry_rcu(user, &intf->users, link,
> +					srcu_read_lock_held(&intf->users_srcu)) {
>  			if (user->handler->ipmi_watchdog_pretimeout)
>  				user->handler->ipmi_watchdog_pretimeout(
>  					user->handler_data);
> @@ -4746,7 +4751,8 @@ static void ipmi_timeout(struct timer_list *unused)
>  		return;
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>  		if (atomic_read(&intf->event_waiters)) {
>  			intf->ticks_to_req_ev--;
>  			if (intf->ticks_to_req_ev == 0) {
> -- 
> 2.25.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
