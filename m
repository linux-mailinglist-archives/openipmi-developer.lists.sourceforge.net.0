Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E01E066D
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2019 16:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iMvAM-0005ro-O9; Tue, 22 Oct 2019 14:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1iMvAJ-0005rE-U0
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 14:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=99x+P3m9acVw3MrQAWw2EOvH80A/uxpSA9gp5a6gHE4=; b=F1mFcRimLMz8ix8QLVqWFMA4FM
 1wEtR1JK1WxE9sodxg9S/ayyKCjOOsv3h7jnBLcfQXgMPjyHsj8YeE8+Fq2Y73VjvbcjiHFaiqqO9
 TxXk4bKvknnb8jkDW3QxWP7U7kOxuVe/2RqwHJRcBfXYWbKgVdlNyzs8K5LStSG3L/p4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=99x+P3m9acVw3MrQAWw2EOvH80A/uxpSA9gp5a6gHE4=; b=Trsfa+hur0hqOw/n/Wnya+23E2
 8uEjcEc/A3fXJYKP1xoG9qe8amDh+ITxQC3Bd8QQE22A0FHGaEsFqLKTbqKAnlp36/8o5V3McCJb7
 Y9ySu24eAgqLgqcNoE06IjSxKusOOTnQzqkoA2HCLXBLDR9jeIzkOskTGhz84SmFgoJ4=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iMvA8-00Gnhg-VV
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 14:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571754562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=99x+P3m9acVw3MrQAWw2EOvH80A/uxpSA9gp5a6gHE4=;
 b=JVdZdFfUUni05hMtigNHwnsjC/9YL1sYES9LMeuKLcxbiBm1GSgulATg3rFLEWwqoyqENz
 QAgeA5ygtILFrVvYyPszx+8Yv8htVRBnSmg8Z4YQJ9HIVeNoJMAnwE/nRCvSZCrVM30p4L
 crXaBggKyciZzuMWFgV6qiuM6LPz1Tg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-6S1jDIpfO_a0u_OZuqNhHg-1; Tue, 22 Oct 2019 10:29:20 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC5E05E4;
 Tue, 22 Oct 2019 14:29:17 +0000 (UTC)
Received: from localhost.localdomain (ovpn-117-200.phx2.redhat.com
 [10.3.117.200])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E3B645C1D4;
 Tue, 22 Oct 2019 14:29:13 +0000 (UTC)
To: minyard@acm.org
References: <20191014134141.GA25427@t560>
 <20191014154632.11103-1-minyard@acm.org>
From: Tony Camuso <tcamuso@redhat.com>
Message-ID: <28065598-c638-07eb-d966-0e85ce62c37f@redhat.com>
Date: Tue, 22 Oct 2019 10:29:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191014154632.11103-1-minyard@acm.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 6S1jDIpfO_a0u_OZuqNhHg-1
X-Mimecast-Spam-Score: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iMvA8-00Gnhg-VV
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Don't allow device module
 unload when in use
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Corey,

Testing shows that this patch works as expected.

Regards,
Tony


On 10/14/19 11:46 AM, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>
> 
> If something has the IPMI driver open, don't allow the device
> module to be unloaded.  Before it would unload and the user would
> get errors on use.
> 
> This change is made on user request, and it makes it consistent
> with the I2C driver, which has the same behavior.
> 
> It does change things a little bit with respect to kernel users.
> If the ACPI or IPMI watchdog (or any other kernel user) has
> created a user, then the device module cannot be unloaded.  Before
> it could be unloaded,
> 
> This does not affect hot-plug.  If the device goes away (it's on
> something removable that is removed or is hot-removed via sysfs)
> then it still behaves as it did before.
> 
> Reported-by: tony camuso <tcamuso@redhat.com>
> Signed-off-by: Corey Minyard <cminyard@mvista.com>
> ---
> Tony, here is a suggested change for this.  Can you look it over and
> see if it looks ok?
> 
> Thanks,
> 
> -corey
> 
>   drivers/char/ipmi/ipmi_msghandler.c | 23 ++++++++++++++++-------
>   include/linux/ipmi_smi.h            | 12 ++++++++----
>   2 files changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 2aab80e19ae0..15680de18625 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -448,6 +448,8 @@ enum ipmi_stat_indexes {
>   
>   #define IPMI_IPMB_NUM_SEQ	64
>   struct ipmi_smi {
> +	struct module *owner;
> +
>   	/* What interface number are we? */
>   	int intf_num;
>   
> @@ -1220,6 +1222,11 @@ int ipmi_create_user(unsigned int          if_num,
>   	if (rv)
>   		goto out_kfree;
>   
> +	if (!try_module_get(intf->owner)) {
> +		rv = -ENODEV;
> +		goto out_kfree;
> +	}
> +	
>   	/* Note that each existing user holds a refcount to the interface. */
>   	kref_get(&intf->refcount);
>   
> @@ -1349,6 +1356,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
>   	}
>   
>   	kref_put(&intf->refcount, intf_free);
> +	module_put(intf->owner);
>   }
>   
>   int ipmi_destroy_user(struct ipmi_user *user)
> @@ -2459,7 +2467,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>    * been recently fetched, this will just use the cached data.  Otherwise
>    * it will run a new fetch.
>    *
> - * Except for the first time this is called (in ipmi_register_smi()),
> + * Except for the first time this is called (in ipmi_add_smi()),
>    * this will always return good data;
>    */
>   static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
> @@ -3377,10 +3385,11 @@ static void redo_bmc_reg(struct work_struct *work)
>   	kref_put(&intf->refcount, intf_free);
>   }
>   
> -int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> -		      void		       *send_info,
> -		      struct device            *si_dev,
> -		      unsigned char            slave_addr)
> +int ipmi_add_smi(struct module         *owner,
> +		 const struct ipmi_smi_handlers *handlers,
> +		 void		       *send_info,
> +		 struct device         *si_dev,
> +		 unsigned char         slave_addr)
>   {
>   	int              i, j;
>   	int              rv;
> @@ -3406,7 +3415,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
>   		return rv;
>   	}
>   
> -
> +	intf->owner = owner;
>   	intf->bmc = &intf->tmp_bmc;
>   	INIT_LIST_HEAD(&intf->bmc->intfs);
>   	mutex_init(&intf->bmc->dyn_mutex);
> @@ -3514,7 +3523,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
>   
>   	return rv;
>   }
> -EXPORT_SYMBOL(ipmi_register_smi);
> +EXPORT_SYMBOL(ipmi_add_smi);
>   
>   static void deliver_smi_err_response(struct ipmi_smi *intf,
>   				     struct ipmi_smi_msg *msg,
> diff --git a/include/linux/ipmi_smi.h b/include/linux/ipmi_smi.h
> index 4dc66157d872..deec18b8944a 100644
> --- a/include/linux/ipmi_smi.h
> +++ b/include/linux/ipmi_smi.h
> @@ -224,10 +224,14 @@ static inline int ipmi_demangle_device_id(uint8_t netfn, uint8_t cmd,
>    * is called, and the lower layer must get the interface from that
>    * call.
>    */
> -int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> -		      void                     *send_info,
> -		      struct device            *dev,
> -		      unsigned char            slave_addr);
> +int ipmi_add_smi(struct module            *owner,
> +		 const struct ipmi_smi_handlers *handlers,
> +		 void                     *send_info,
> +		 struct device            *dev,
> +		 unsigned char            slave_addr);
> +
> +#define ipmi_register_smi(handlers, send_info, dev, slave_addr) \
> +	ipmi_add_smi(THIS_MODULE, handlers, send_info, dev, slave_addr)
>   
>   /*
>    * Remove a low-level interface from the IPMI driver.  This will
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
