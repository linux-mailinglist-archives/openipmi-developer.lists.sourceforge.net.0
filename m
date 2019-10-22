Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5683EE080C
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2019 17:56:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iMwWZ-00055T-It; Tue, 22 Oct 2019 15:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iMwWY-00055D-4i
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 15:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nT+qu+mK4nExh9asL6QEuobL9f44sXZzjJ8OGH3zTLs=; b=E8UvlMiFwn2Ssop0GYssna564p
 EHFSZ4JWJncKmw5e29XN5i2vpQNmwF+eeia7F33cunCax54OaOFuQdHyf1hyaLMED+cchqwq2rmgr
 lAzr3JEX1lMJyUBUi0GHxVtE61pOvj+y7iPxOwfaUQOgEN8qzTdKlPX7IsISsIBEkv/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nT+qu+mK4nExh9asL6QEuobL9f44sXZzjJ8OGH3zTLs=; b=KOqHyR1hghboT9ks8TmQ+6khbm
 K5pwMtVqLNCPjCrUYqrBLOQE4cre/dRBE7Dp6IikJgA8wX615fomIK8UU+krH2QY3eQGS504rQw9l
 S4Dj4lPXblh2uMlfLaE3hCgx7lC4qUIVmhx0sPsISakJfzaKbLuN9UtD9K2P4amJpMQQ=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iMwWU-00Grly-C8
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Oct 2019 15:56:42 +0000
Received: by mail-oi1-f196.google.com with SMTP id i185so14602769oif.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 22 Oct 2019 08:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nT+qu+mK4nExh9asL6QEuobL9f44sXZzjJ8OGH3zTLs=;
 b=jiPaNGgo/CgQHcG9hfGwIIOkxf9tMHIdDesTkpbw5BbUzbEqEV6xfyrtz4XCd9lRzQ
 mmIzdQDOE1drZYsdxFVBmGEVPkM8Kcr0cWpt8ptN3i9XLbDJ1i+xYPJXhNdNQ/wGAByX
 lS1ah5yqFODjchjAYkMNETyQQ/h4dT73uNZKi4TDjGcZcPPqQuE2g7Hpy+nj8svXQvK/
 rajQmCMj3kS5Dpw6BSbWmSaT53Ik0aealOGhGh9fX5zX7LEDLS/B9UtECrLH9lvlYeMa
 GvJ1TDuHHY869jclQ3MrlN+4qVb7IFKHupanLxHUhvL/tk/GK/DxSvX9z1hOevFxRcgh
 y1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=nT+qu+mK4nExh9asL6QEuobL9f44sXZzjJ8OGH3zTLs=;
 b=eQvdQK5fuhig/LjzIfWgQCEd3NipK33sLn5VNRfrFnwnDq3OiRMMNCU9BoTPwyQ9uW
 Wy+DTPcAx+ZZDCIgRfhACrpsmyXbmBuTISS1tnp21bMR4CRUhsms/W6IPdSZk/gkwsjF
 loeGOiUmDqfSFn4tpqqQXrufjGLzu4Lqbnyk1JPUC9/SIIiip8ZhtwN/aFyYSYl6Bkm+
 DhH0/tDzFdWjoHH5xx+skAG9ELxoxJnDjF66sL5Kn3dFuo1/hKuvWlcbouLmiT4Cd8FL
 e5w9WtfLL1coiF9uXk20/F/UAS87zvW4lHlHUXDMN8IpJ8kPCMYS8GOWB95o7CwQfKX4
 yHYg==
X-Gm-Message-State: APjAAAUxqdvUMu3DqpsyRFvLldtChRlqVQ0z4hsCS9SUHF3CAsMOSCY6
 2XLVVVixcuMMeJWBWFO326qeESzhcA==
X-Google-Smtp-Source: APXvYqwJDxk9uqBohdV+ivzlr/WbmtCIalYQxKWJETxEQIq1RB3qGjj65Atk8+KrHJnT4L/0970+nQ==
X-Received: by 2002:aca:f1d7:: with SMTP id p206mr3671009oih.97.1571759792068; 
 Tue, 22 Oct 2019 08:56:32 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id s1sm5145646otd.49.2019.10.22.08.56.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 08:56:31 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id EAB7B180044;
 Tue, 22 Oct 2019 15:56:30 +0000 (UTC)
Date: Tue, 22 Oct 2019 10:56:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20191022155629.GU14232@t560>
References: <20191014134141.GA25427@t560>
 <20191014154632.11103-1-minyard@acm.org>
 <28065598-c638-07eb-d966-0e85ce62c37f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28065598-c638-07eb-d966-0e85ce62c37f@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iMwWU-00Grly-C8
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
Reply-To: minyard@acm.org
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 22, 2019 at 10:29:12AM -0400, Tony Camuso wrote:
> Corey,
> 
> Testing shows that this patch works as expected.

Thanks, I'll add a Tested-by for you.  It's queued for the next merge
window.

-corey

> 
> Regards,
> Tony
> 
> 
> On 10/14/19 11:46 AM, minyard@acm.org wrote:
> > From: Corey Minyard <cminyard@mvista.com>
> > 
> > If something has the IPMI driver open, don't allow the device
> > module to be unloaded.  Before it would unload and the user would
> > get errors on use.
> > 
> > This change is made on user request, and it makes it consistent
> > with the I2C driver, which has the same behavior.
> > 
> > It does change things a little bit with respect to kernel users.
> > If the ACPI or IPMI watchdog (or any other kernel user) has
> > created a user, then the device module cannot be unloaded.  Before
> > it could be unloaded,
> > 
> > This does not affect hot-plug.  If the device goes away (it's on
> > something removable that is removed or is hot-removed via sysfs)
> > then it still behaves as it did before.
> > 
> > Reported-by: tony camuso <tcamuso@redhat.com>
> > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> > ---
> > Tony, here is a suggested change for this.  Can you look it over and
> > see if it looks ok?
> > 
> > Thanks,
> > 
> > -corey
> > 
> >   drivers/char/ipmi/ipmi_msghandler.c | 23 ++++++++++++++++-------
> >   include/linux/ipmi_smi.h            | 12 ++++++++----
> >   2 files changed, 24 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index 2aab80e19ae0..15680de18625 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -448,6 +448,8 @@ enum ipmi_stat_indexes {
> >   #define IPMI_IPMB_NUM_SEQ	64
> >   struct ipmi_smi {
> > +	struct module *owner;
> > +
> >   	/* What interface number are we? */
> >   	int intf_num;
> > @@ -1220,6 +1222,11 @@ int ipmi_create_user(unsigned int          if_num,
> >   	if (rv)
> >   		goto out_kfree;
> > +	if (!try_module_get(intf->owner)) {
> > +		rv = -ENODEV;
> > +		goto out_kfree;
> > +	}
> > +	
> >   	/* Note that each existing user holds a refcount to the interface. */
> >   	kref_get(&intf->refcount);
> > @@ -1349,6 +1356,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
> >   	}
> >   	kref_put(&intf->refcount, intf_free);
> > +	module_put(intf->owner);
> >   }
> >   int ipmi_destroy_user(struct ipmi_user *user)
> > @@ -2459,7 +2467,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
> >    * been recently fetched, this will just use the cached data.  Otherwise
> >    * it will run a new fetch.
> >    *
> > - * Except for the first time this is called (in ipmi_register_smi()),
> > + * Except for the first time this is called (in ipmi_add_smi()),
> >    * this will always return good data;
> >    */
> >   static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
> > @@ -3377,10 +3385,11 @@ static void redo_bmc_reg(struct work_struct *work)
> >   	kref_put(&intf->refcount, intf_free);
> >   }
> > -int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> > -		      void		       *send_info,
> > -		      struct device            *si_dev,
> > -		      unsigned char            slave_addr)
> > +int ipmi_add_smi(struct module         *owner,
> > +		 const struct ipmi_smi_handlers *handlers,
> > +		 void		       *send_info,
> > +		 struct device         *si_dev,
> > +		 unsigned char         slave_addr)
> >   {
> >   	int              i, j;
> >   	int              rv;
> > @@ -3406,7 +3415,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> >   		return rv;
> >   	}
> > -
> > +	intf->owner = owner;
> >   	intf->bmc = &intf->tmp_bmc;
> >   	INIT_LIST_HEAD(&intf->bmc->intfs);
> >   	mutex_init(&intf->bmc->dyn_mutex);
> > @@ -3514,7 +3523,7 @@ int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> >   	return rv;
> >   }
> > -EXPORT_SYMBOL(ipmi_register_smi);
> > +EXPORT_SYMBOL(ipmi_add_smi);
> >   static void deliver_smi_err_response(struct ipmi_smi *intf,
> >   				     struct ipmi_smi_msg *msg,
> > diff --git a/include/linux/ipmi_smi.h b/include/linux/ipmi_smi.h
> > index 4dc66157d872..deec18b8944a 100644
> > --- a/include/linux/ipmi_smi.h
> > +++ b/include/linux/ipmi_smi.h
> > @@ -224,10 +224,14 @@ static inline int ipmi_demangle_device_id(uint8_t netfn, uint8_t cmd,
> >    * is called, and the lower layer must get the interface from that
> >    * call.
> >    */
> > -int ipmi_register_smi(const struct ipmi_smi_handlers *handlers,
> > -		      void                     *send_info,
> > -		      struct device            *dev,
> > -		      unsigned char            slave_addr);
> > +int ipmi_add_smi(struct module            *owner,
> > +		 const struct ipmi_smi_handlers *handlers,
> > +		 void                     *send_info,
> > +		 struct device            *dev,
> > +		 unsigned char            slave_addr);
> > +
> > +#define ipmi_register_smi(handlers, send_info, dev, slave_addr) \
> > +	ipmi_add_smi(THIS_MODULE, handlers, send_info, dev, slave_addr)
> >   /*
> >    * Remove a low-level interface from the IPMI driver.  This will
> > 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
