Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A4A5E2C2
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Mar 2025 18:29:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tsPtU-0006D9-IX;
	Wed, 12 Mar 2025 17:29:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <SRS0=uRPJ=V7=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org>)
 id 1tsPtS-0006D2-EW for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 17:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MAo1lEK5PosOBQghoRGBK+xA+TzfGV4PKqNhWip/TOY=; b=NhlIZgTvgvEaoomnBbdBtrFrGV
 UWV7ZBMjO5Rx3WdPWt8dFpXf7OaLzrQ/TrqlsQzXnuRvbFCIJfyDwcscswXzTWbe/h7P+6hUTMuwV
 eGEj2HEH2hBmmaJQCj4cf4YxNyhUW+tuzCjYI/oXWf5SdTESrxt3DbZp9e0bxQx+ajD0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MAo1lEK5PosOBQghoRGBK+xA+TzfGV4PKqNhWip/TOY=; b=TZeMWtz+d6vwjWXF/LqNMfLoQB
 cVlqFVXV801GJ+/eZfjqjWaRPm2+WmD5wKghZkddEJpjdsmLmWooRpoASYXjU1XANd1MzbtPByldD
 o3sNoah6auGImFzAxJBki7q/mXi6Jl2i2wFZQEMMvXnLNYQvndVz7iLgH1vun3Y083BQ=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsPtR-0006KG-O8 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 17:29:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 11217A46D8A;
 Wed, 12 Mar 2025 17:23:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0659C4CEDD;
 Wed, 12 Mar 2025 17:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1741800550;
 bh=wiZ3gI8knSno7vCydpNF1uHdUFebRXO3ZkPZn+zaQZ8=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=mcuRHfwFxiMTLj789526sJ+SGs46A+gHzKtgKHRL+2uqi6HX1t/r4BlKjrBlNb0+5
 HaXmksl0n8HRctOaltE5imiW39EZG72kI79B9MNoZQKEgkT+jtXVbXeo2nAj3gaQKz
 EYoWiXZFVSV18ZnHROE621mcVaNwYzMlj8jmLwnW9tMOCMJeospM3hgN/C+yv8vD/w
 2F0s8TFHbCHR0tp3ZH1JSgZRDjMBAJ323wQy8A+KmtkF/tmQvxXs6fQN8pxYDX942W
 1VWM0TpeP7E5keybkqNSDQy9KQqHhKcfaIUOSCJfCaVX+POsQ6GVwvG+MqUpFSGgyg
 ySKliQuj9cDiA==
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
 id 55580CE1401; Wed, 12 Mar 2025 10:29:10 -0700 (PDT)
Date: Wed, 12 Mar 2025 10:29:10 -0700
To: Rik van Riel <riel@surriel.com>
Message-ID: <e28d914d-5842-4bfa-8208-9ac34fd38a95@paulmck-laptop>
References: <20250312131932.44d901f7@fangorn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250312131932.44d901f7@fangorn>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
 > On recent kernels this warning fires: > >
 drivers/char/ipmi/ipmi_msghandler.c:1238
 RCU-list traversed in non-reader section!! > > This l [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tsPtR-0006KG-O8
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix suspicious RCU usage
 warning
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
From: "Paul E. McKenney via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: paulmck@kernel.org
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 kernel-team@meta.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
> On recent kernels this warning fires:
> 
> drivers/char/ipmi/ipmi_msghandler.c:1238 RCU-list traversed in non-reader section!!
> 
> This looks like a fairly simple lockdep trigger, where
> list_for_each_entry_rcu and list_for_each_entry_srcu are
> functionally identical, but the lockdep annotation in
> the former has an extra check.
> 
> That extra check is whether the RCU read lock is held,
> which is not true when the code uses srcu_read_lock.
> 
> Get rid of the warning by using the properly annotated
> list traversal macro.
> 
> Signed-off-by: Rik van Riel <riel@surriel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 1e5313748f8b..a2823763fd37 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1235,7 +1235,7 @@ int ipmi_create_user(unsigned int          if_num,
>  		return -ENOMEM;
>  
>  	index = srcu_read_lock(&ipmi_interfaces_srcu);
> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
> +	list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {

Doesn't the above line want to be something like this?

+	list_for_each_entry_srcu(intf, &ipmi_interfaces, link,
				 srcu_read_lock_held(&ipmi_interfaces_srcu)) {

>  		if (intf->intf_num == if_num)
>  			goto found;
>  	}
> -- 
> 2.48.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
