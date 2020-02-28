Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BE8173665
	for <lists+openipmi-developer@lfdr.de>; Fri, 28 Feb 2020 12:49:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j7e8q-0005wW-Ol; Fri, 28 Feb 2020 11:49:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.garry@huawei.com>) id 1j7e8p-0005wB-AK
 for openipmi-developer@lists.sourceforge.net; Fri, 28 Feb 2020 11:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+41uXHqdjg1SWInSNPkz9jYgTk40AeigmgPw9cIKFsY=; b=D6O0gMDY4p2LyOaTQodf5HP9/p
 3lxGyMUhxl4uQ4ORawrTTIVPajpqE73oAq1onoJHNibhD8sS7F4mleRq3qs05zvJxAI2L1QAz6Dfd
 Ed5fmcTjYDFQ4dmMtqQBS31KUYttoUrSLms9AKklZMpbPx6xpl9rpAQj1tRQqfFC2d+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+41uXHqdjg1SWInSNPkz9jYgTk40AeigmgPw9cIKFsY=; b=mTru4tHafNybpvwetrLHZ2wCdm
 C94aLSqgseevO4nPiwHxC/pFGWjz5oLu2VY1E82S937noNhhImjnq9Gkxrec2Koo6bo201Ll27W24
 l+x8b7+f6DxDmeuBo39PKShAcQM9z9l1lDn43Q/kh4QSbELp2zmMNcDiMohjkuuIUWag=;
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j7e8l-008S38-4U
 for openipmi-developer@lists.sourceforge.net; Fri, 28 Feb 2020 11:49:15 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 3EA0F548ADD1CC5E62CD;
 Fri, 28 Feb 2020 11:49:03 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 28 Feb 2020 11:49:02 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Fri, 28 Feb
 2020 11:49:02 +0000
To: Amol Grover <frextrite@gmail.com>, Corey Minyard <minyard@acm.org>, "Arnd
 Bergmann" <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200228081731.18149-1-frextrite@gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <b843fa9d-7fd3-940f-fb18-5ce3bef3a9be@huawei.com>
Date: Fri, 28 Feb 2020 11:49:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200228081731.18149-1-frextrite@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml708-chm.china.huawei.com (10.201.108.57) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j7e8l-008S38-4U
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
Cc: "Paul E . Mckenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org,
 Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28/02/2020 08:17, Amol Grover wrote:
> It is completely safe to traverse ipmi_interfaces and
> intf->users under SRCU read lock using list_for_each_entry_rcu().
> Tell lockdep about it as well else it will show false-positive
> warnings as the one below.
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

Tested-by: John Garry <john.garry@huawei.com>

Thanks, the warnings have gone away with this

> ---
>   drivers/char/ipmi/ipmi_msghandler.c | 18 ++++++++++++------
>   1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index cad9563f8f48..d202022c69de 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -741,7 +741,8 @@ int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
>   	list_add(&watcher->link, &smi_watchers);
>   
>   	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>   		int intf_num = READ_ONCE(intf->intf_num);
>   
>   		if (intf_num == -1)
> @@ -1188,7 +1189,8 @@ int ipmi_create_user(unsigned int          if_num,
>   		return -ENOMEM;
>   
>   	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>   		if (intf->intf_num == if_num)
>   			goto found;
>   	}
> @@ -1241,7 +1243,8 @@ int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data)
>   	struct ipmi_smi *intf;
>   
>   	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>   		if (intf->intf_num == if_num)
>   			goto found;
>   	}
> @@ -4098,7 +4101,8 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>   	 * getting events.
>   	 */
>   	index = srcu_read_lock(&intf->users_srcu);
> -	list_for_each_entry_rcu(user, &intf->users, link) {
> +	list_for_each_entry_rcu(user, &intf->users, link,
> +				srcu_read_lock_held(&intf->users_srcu)) {
>   		if (!user->gets_events)
>   			continue;
>   
> @@ -4453,7 +4457,8 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>   		int index;
>   
>   		index = srcu_read_lock(&intf->users_srcu);
> -		list_for_each_entry_rcu(user, &intf->users, link) {
> +		list_for_each_entry_rcu(user, &intf->users, link,
> +					srcu_read_lock_held(&intf->users_srcu)) {
>   			if (user->handler->ipmi_watchdog_pretimeout)
>   				user->handler->ipmi_watchdog_pretimeout(
>   					user->handler_data);
> @@ -4746,7 +4751,8 @@ static void ipmi_timeout(struct timer_list *unused)
>   		return;
>   
>   	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
> +				srcu_read_lock_held(&ipmi_interfaces_srcu)) {
>   		if (atomic_read(&intf->event_waiters)) {
>   			intf->ticks_to_req_ev--;
>   			if (intf->ticks_to_req_ev == 0) {
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
