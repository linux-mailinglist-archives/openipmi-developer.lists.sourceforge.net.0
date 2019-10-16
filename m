Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE13D9A22
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Oct 2019 21:34:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iKp3c-0007vr-PA; Wed, 16 Oct 2019 19:34:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iKp3a-0007vj-RB
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 19:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0EwAgpEWd7EO1EKdG0MkkOzuiwYznfYN6gWUck6FlNk=; b=RmdKIF0h0ZMNCUqdoyRghHYkvs
 9r5mHKoMZGoFzuhNN8v8X5atBSt2D7U1/gIoBoqDLNDENsrMXl/Ye3vU6KO1BaJ9k66BQfAJU7hAB
 AuWnGLDZv4sy3GVmmu7BSEsgAu8C6lj3Ivi4yd6cBMo4QyRjUwxCGMudTz5L06V+ndrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0EwAgpEWd7EO1EKdG0MkkOzuiwYznfYN6gWUck6FlNk=; b=GdtVKj/hc+8UgEYMxOQmtLPuv0
 4n+uw33TKEag5x5+3XGsl1iAhm7BCzKKGg4HXr1YO5dU1ksOr/MVol3VUoH/essdPcFzXs2Rp1ghA
 P/RyUx8HBCyoOh7JtyXGmWgAZLiy4guHdm0EUef2THw0V4oHIIahuriP9CC23l+v0n3Y=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKp3W-004G6J-5F
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 19:34:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id 60so21210021otu.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2019 12:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0EwAgpEWd7EO1EKdG0MkkOzuiwYznfYN6gWUck6FlNk=;
 b=gkOUvUOBud2L6/5P2AOAIv5TGQ0M9JfReVPHkNifHedEPpf9C2ArYQmO9HSzD8LMFz
 5kZW2qK3mfrnTNNDASJT3tiwWUaCdBW+paalxTil5WxBO+isf1bXvGFBjiccrbZ+IMZw
 xpkxJF4W3BaFs+gtd+cko4whgrvQaqUsm9p3chQkEIOcqrWbv9xFDQGVoZy0DkBcre+i
 WppiCvJHLWQEzU3c9vz4G9Nx/mBBet2u21zrLZE5nfyoDraAWgzP0P6xBg3p5K+HUTW+
 b3+0gJZg4x2GCKSVAwvQjR7PZLZfyvkzIsOL79Rm1Dcq1Fbu56lr12jXuuNAb/HsuTP0
 BjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=0EwAgpEWd7EO1EKdG0MkkOzuiwYznfYN6gWUck6FlNk=;
 b=SfqVe0e36/lY1B/upSpzzO1NKkavRnZyOWhQlwczEooGmv4CbJKogK+iOMHXT+TXoy
 J9qJQhDECzDZpqV2m/Cuobb2bBmULYm3cECptA7AmuCd5tjPmVH8r9B+RJB8g9xsfrcX
 t7wLRQOQMsm7S9s4T1uxiRClTL38MLphPaVrVNByRD8kKjyHy+TakGd79XrHfRd6eYI6
 PY9XXyhh0phApUt7DKOqDmZYu9weNkgqfLX0nPUHvPlkBUatURoOaFgBBX77Wp4TQqtJ
 4tWId/jG89ttnq52Eb82fBImazyMtxqswdIkUOo1qbhPhUCUeGF2PfIucCPVECFCQgVq
 dPew==
X-Gm-Message-State: APjAAAUznPFcwbllfNezcgQ202Gs79aP5YYDZFy8oerDr4YzryM/ALwg
 ijrS3g/Qe3/5l1lXC2Z+czGu2uE=
X-Google-Smtp-Source: APXvYqwuzd58Mq7UxADftNjaqqu6nt/Ts9ibHkjdwTJDrfxCdB4x58a3NYpRkQ/s1wJSpZ4JCs72iQ==
X-Received: by 2002:a9d:19a9:: with SMTP id k38mr6040876otk.366.1571254431889; 
 Wed, 16 Oct 2019 12:33:51 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 8sm7704769oti.41.2019.10.16.12.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 12:33:51 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 821FF180046;
 Wed, 16 Oct 2019 19:33:50 +0000 (UTC)
Date: Wed, 16 Oct 2019 14:33:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20191016193349.GP14232@t560>
References: <20191014134141.GA25427@t560>
 <20191014154632.11103-1-minyard@acm.org>
 <f73aa2ef-e173-db85-e426-3bf380626f66@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f73aa2ef-e173-db85-e426-3bf380626f66@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iKp3W-004G6J-5F
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

On Wed, Oct 16, 2019 at 03:25:56PM -0400, Tony Camuso wrote:
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
> 
> Hi Corey.
> 
> You changed ipmi_register_ipmi to ipmi_add_ipmi in ipmi_msghandler, but you
> did not change it where it is actually called.
> 
> # grep ipmi_register_smi drivers/char/ipmi/*.c
> drivers/char/ipmi/ipmi_powernv.c:	rc = ipmi_register_smi(&ipmi_powernv_smi_handlers, ipmi, dev, 0);
> drivers/char/ipmi/ipmi_si_intf.c:	rv = ipmi_register_smi(&handlers,
> drivers/char/ipmi/ipmi_ssif.c:	rv = ipmi_register_smi(&ssif_info->handlers,
> 
> Is there a reason for changing the interface name? Is this something
> that I could do instead of troubling you with it?

I don't understand.  You don't say that anything went wrong, you just
referenced something I changed.

I changed the name so I could create a macro with that name to pass in
the module name.  Pretty standard to do in the kernel.  Is there a
compile or runtime issue?

-corey

> 
> Regards,
> Tony
> 
> 
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
