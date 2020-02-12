Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A866415AA4A
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Feb 2020 14:46:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j1sL8-0005KZ-Ip; Wed, 12 Feb 2020 13:46:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j1sL7-0005KN-5P
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Feb 2020 13:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w+9a/C8GLe23HYD/53W97lcvboWXgDPM5I+bKJDpdyw=; b=UINvqj1BZfLHZfTEdEenO2fk4h
 jdUIfCyV/MHx8e357Ega/Llb7U7qfJG9wtqQ6wt4YNNfsdehKnGdmz+o5/ygSV722cAZpMIV4VStC
 6xnR3P1pSyn/k2QNIHwVQKfOgnudKM28RKrX9trFolV5ry+iUhvJ8bQrzeVdcSsr6waI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w+9a/C8GLe23HYD/53W97lcvboWXgDPM5I+bKJDpdyw=; b=QnNY4lyXK9xB0h81oOxE6sV2VV
 MaIizrbSCRUiHkytHvMq1lE4zJWm3QFIVc4QvekRVOgzqVMai7HNQ30qtGkfU8ZB7ZfMVGWAdDsXu
 ChOs1KlOsphMGbN/GyY7PTzzBOCpGwLnvMvHHcUahl1pbORCtWKXQzr8co2fBzpasp4M=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j1sL5-001RhV-7e
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Feb 2020 13:46:05 +0000
Received: by mail-oi1-f194.google.com with SMTP id l136so2054366oig.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Feb 2020 05:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w+9a/C8GLe23HYD/53W97lcvboWXgDPM5I+bKJDpdyw=;
 b=ruTm3lqW2VysvFQ29tg9NgK2kyDCsR7ohgp4u2we/nGM4La/iKBWJCgqKJ0tm2+MR1
 SzeEcJfO+CDWCBGlPrzJ0EXZ3biWOqDsxAIvTMTQAFmOmpwIS+kkyxKt4MFNSDHhFiYl
 TqKjqBUeQoCBxTLwZY0skkn3vLbIkWK3g1ulxuS7yz1ILB3SjvDHVeVsVQvjqUJOMjSD
 yTUdhqenNBftYtyxMsE7saHnHGOnHQcqg75E7+BxR110ybOK5dBdAFkmRRLeG+sKx72V
 tbSAZYcGXhzmE15dI9iOiUa6NTUU3TDt7J9LPmN7w5EMvPWGcY0t5hvq+0PsLgCGWf5y
 c8HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=w+9a/C8GLe23HYD/53W97lcvboWXgDPM5I+bKJDpdyw=;
 b=bstTRvORoFXbG7FJSf+sEnzHxO/Y/OzAYtW7SoZ1UohBKvq8dv5YD9VaPnMaz6IHlt
 IK9ZZO/DWhBG7lOaTKoGe5K5TlyIgfgRXqXXGPjQ4/6G4pCPAP3/eJ+ISA6FIWtzicQk
 KtOU3+CDXAijxVcAee1mYjMNX7xHuIMZ7Z4fiBwMNmrA6aXBD6NfJG10D4aEC6AcQ0xm
 Uco0eo2ITDURMdWkYkzVm5ikEQjDPgjtOuFkyifhMZMcAudBSFz1CHwy8LhA6OCUlza/
 cFsjNrey/+tTDrEkpso6jEHKRugbiWUlgeDjflPINrtjtIBaR/w5JCRdFjHlqWKTANBi
 VvJQ==
X-Gm-Message-State: APjAAAXX3/VMzuZHjg0DyUUf2XppItOn9BZgWad83GsEQzOzmdppSEhq
 zVyRxlAaLrQXOSpvTSNd8A==
X-Google-Smtp-Source: APXvYqwkgvblGx+JRC3ff68p+PCc3tv+uA3GDD2bV0WIyuf0Auq4Vf0YuAu0VPq26OyW80NZ5v2iKg==
X-Received: by 2002:a05:6808:3ae:: with SMTP id
 n14mr6317402oie.63.1581515157211; 
 Wed, 12 Feb 2020 05:45:57 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 108sm185737oti.1.2020.02.12.05.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 05:45:53 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e166:6491:dd75:4196])
 by serve.minyard.net (Postfix) with ESMTPSA id 5A6DA180053;
 Wed, 12 Feb 2020 13:45:53 +0000 (UTC)
Date: Wed, 12 Feb 2020 07:45:52 -0600
From: Corey Minyard <minyard@acm.org>
To: Amol Grover <frextrite@gmail.com>
Message-ID: <20200212134552.GN7842@minyard.net>
References: <20200117132521.31020-1-frextrite@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117132521.31020-1-frextrite@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1sL5-001RhV-7e
Subject: Re: [Openipmi-developer] [PATCH v3] drivers: char: ipmi:
 ipmi_msghandler: Pass lockdep expression to RCU lists
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 17, 2020 at 06:55:22PM +0530, Amol Grover wrote:
> intf->cmd_rcvrs is traversed with list_for_each_entry_rcu
> outside an RCU read-side critical section but under the
> protection of intf->cmd_rcvrs_mutex.
> 
> ipmi_interfaces is traversed using list_for_each_entry_rcu
> outside an RCU read-side critical section but under the protection
> of ipmi_interfaces_mutex.
> 
> Hence, add the corresponding lockdep expression to the list traversal
> primitive to silence false-positive lockdep warnings, and
> harden RCU lists.
> 
> Add macro for the corresponding lockdep expression to make the code
> clean and concise.
> 
> Signed-off-by: Amol Grover <frextrite@gmail.com>

After reading everything, I think this is correct, but I would like
Paul's stamp of approval on this.

Thanks,

-corey

> ---
> v3:
> - Remove rcu_read_lock_held() from lockdep expression since it is
>   implicitly checked.
> - Remove unintended macro usage.
>  
> v2:
> - Fix sparse error
>   CHECK: Alignment should match open parenthesis
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index cad9563f8f48..64ba16dcb681 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -618,6 +618,8 @@ static DEFINE_MUTEX(ipmidriver_mutex);
>  
>  static LIST_HEAD(ipmi_interfaces);
>  static DEFINE_MUTEX(ipmi_interfaces_mutex);
> +#define ipmi_interfaces_mutex_held() \
> +	lockdep_is_held(&ipmi_interfaces_mutex)
>  static struct srcu_struct ipmi_interfaces_srcu;
>  
>  /*
> @@ -1321,7 +1323,8 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
>  	 * synchronize_srcu()) then free everything in that list.
>  	 */
>  	mutex_lock(&intf->cmd_rcvrs_mutex);
> -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
>  		if (rcvr->user == user) {
>  			list_del_rcu(&rcvr->link);
>  			rcvr->next = rcvrs;
> @@ -1599,7 +1602,8 @@ static struct cmd_rcvr *find_cmd_rcvr(struct ipmi_smi *intf,
>  {
>  	struct cmd_rcvr *rcvr;
>  
> -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
>  		if ((rcvr->netfn == netfn) && (rcvr->cmd == cmd)
>  					&& (rcvr->chans & (1 << chan)))
>  			return rcvr;
> @@ -1614,7 +1618,8 @@ static int is_cmd_rcvr_exclusive(struct ipmi_smi *intf,
>  {
>  	struct cmd_rcvr *rcvr;
>  
> -	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link) {
> +	list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
> +				lockdep_is_held(&intf->cmd_rcvrs_mutex)) {
>  		if ((rcvr->netfn == netfn) && (rcvr->cmd == cmd)
>  					&& (rcvr->chans & chans))
>  			return 0;
> @@ -3450,7 +3455,8 @@ int ipmi_add_smi(struct module         *owner,
>  	/* Look for a hole in the numbers. */
>  	i = 0;
>  	link = &ipmi_interfaces;
> -	list_for_each_entry_rcu(tintf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(tintf, &ipmi_interfaces, link,
> +				ipmi_interfaces_mutex_held()) {
>  		if (tintf->intf_num != i) {
>  			link = &tintf->link;
>  			break;
> -- 
> 2.24.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
