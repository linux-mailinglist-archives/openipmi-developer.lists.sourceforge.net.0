Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6918B1F0AB
	for <lists+openipmi-developer@lfdr.de>; Sat,  9 Aug 2025 00:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WYL+asKv/JF2hpkY5PDUjcRBedItma8MysMbiTA9+h0=; b=ZZVz1PfHOgQS0qnzY0rKOd1BFc
	JP1xnA74WYKPXOYsxIGB0HPE3FtrUOtuYzFqwHSndrbcwFxr+7cqA3IemA99KIQvILWK9EmrOEBHQ
	un1XUSw/RHKFJGuN0aQjqymxIxf3Wxr58HWdijZb06io558rJXX9q68DY1mbWBewz5gE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ukVZc-0001bz-I5;
	Fri, 08 Aug 2025 22:28:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1ukVZa-0001bh-N8
 for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 22:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lEGYyJXldsnlGE9tOCaB3uk2uTlfrO37SMTWq1FGa88=; b=DSsc/6KeHRud6GHh+WyffclNK3
 zsOK+CvvJgX4Da/msG7EHz1vz0RVBbUrQuI0vT/jPTJnLvvxLTlkSQ4m0nrOUqnVApwXvDAYY2O55
 P1Xq2oQXMplkMMhl6SuUyQInBNe1BMQNkQ49nBxFcB+7aT4YqoXi4tEwO6lYEiP5gnyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lEGYyJXldsnlGE9tOCaB3uk2uTlfrO37SMTWq1FGa88=; b=EBm3rET6euWcaZHRUjcuTFsznE
 4zWMPXA+R9gEhdIXGrxMct9cwqVMzjUPZluN7t/MxA9wcAtRWTCJZILx8NnBnk5DHmndDgeVFJ0WP
 NlBt5m+gSpELblQJUKe6NM+yk7D1PQYWwjELtpiFFa4voPXT7XEY6lKZc0VjbHYZPVgg=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ukVZb-0003HO-2y for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 22:28:27 +0000
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-76b36e6b9ddso2478186b3a.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 08 Aug 2025 15:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754692096; x=1755296896;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lEGYyJXldsnlGE9tOCaB3uk2uTlfrO37SMTWq1FGa88=;
 b=UVCGKJYleyb6CcT3i/8Yn0M1/BbrJjqNfezecqudotHBSBBPbYa09eq8Ueo4qgCRen
 jtG9nLJdq6oIFLj61KTNqGaVEEp0fxuFJVcmenFXGAyN+m7IJP0r89/Hnhx+QCH/xVIC
 qw9GhpWZyAI94FwK0P2jxiNoRqzBzC35s1kQ0GYhE9e0+/1iQvWX/QAiWawEpEc7J/BT
 25VNdX256q9LSfcyJoNnW+ZaCM+uknT4IQyjErccYfyMOwDJRcDIANdkDfO7CCRQ2JVL
 q4CNIneFhAqmRyEBP5mavPP42Ax8kiNPW+2t0vxwsyRgsh+Uq4XiSS2vE300aWugt3PM
 ldHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754692096; x=1755296896;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lEGYyJXldsnlGE9tOCaB3uk2uTlfrO37SMTWq1FGa88=;
 b=vZkkPwjeyBRlwGo24gVq/czrtBDe8VfmGSnQT5UOoczeGeBUETRHUoXvzY527vf046
 WIYrXso0ztw9nWFardJ68nj8oQMm1JfsY3PlLZvWO+vDwiZwbgenPaloH1FBp7l+jaqd
 J6RbZOd1SslgvIJ7j/ZXG6LCKap63yfIgunmL50+4bG9UU2sY2IC3bMuwFvNalAL+fO5
 AZk95pQH2nOachwfVvBKCWkY/rjSrFDrgoT1sFB0VADZJuTsKLHqMF7SQ2kocykYbJjE
 zMTiWn06cmCtnF9qZkUSCZHabnI5PVKWZ6hpqMZNySUY0uJ3XO6+jBqO5kbZnvwORNRP
 hZAQ==
X-Gm-Message-State: AOJu0YxMwrbcUaTPL1OnVLYnVRxzxwlHgTYp/gp9HlAtDv53zPG7YCU4
 8jJyxuzyuWSVV7bu69X8lQdsPdxlv4mtptyMifxvRexn6pTrxdstRyyUntE+9cvFfL28cYZ5421
 woveg
X-Gm-Gg: ASbGncuyRaU0+CCCUP4buoMAz+LsCmBjxyj1rtzsIi4g81fLeFkh1HvdACE/wiVSuwy
 v7uKsBqBfoIsrJccc7fmLvtrt0NBU/JHYbenAYNzcpYJmG8xZMQuWYNqcvf2q0c4wuF6w5pVsr4
 FhAPZqMI8UBLDycMNvRdK3kyt3lSANVQ9IzzIc8cMLegGc6ZcAjV9oKA+eN8UiaQaNtW+M11+Xx
 IIXYwtrl/qTtv1lUzQ/FO2k8oK8O0O2lbrkUO91AkfISXLtrZeFbcLA+Lxuww9+PMLMeJ3c0352
 Y6gxEh1tbLqIimpqPufFZjdJUOekDJCbSrrComkXUD4d4nOQ2OU5LNs0/VbvAZcnM8Box2SLPbf
 nZpWVGCL3ZgAXUdMOxalg0EbbRi/2QEz0Uec=
X-Google-Smtp-Source: AGHT+IGEuLkCa6eymEthWlGU8klr8RO0bORK8jccZGv069RpsewtDDZjrvMvXY/FQgusoX69D8fh3g==
X-Received: by 2002:a05:6a00:3cd4:b0:748:f1ba:9af8 with SMTP id
 d2e1a72fcca58-76c461959fbmr6252278b3a.21.1754692096355; 
 Fri, 08 Aug 2025 15:28:16 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:4a9b:7646:8b3c:6e8])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76c2078afd8sm9289316b3a.117.2025.08.08.15.28.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Aug 2025 15:28:15 -0700 (PDT)
Date: Fri, 8 Aug 2025 17:28:09 -0500
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Message-ID: <aJZ5-Tv1oU7FMjgC@mail.minyard.net>
References: <20250807230648.1112569-1-corey@minyard.net>
 <20250807230648.1112569-3-corey@minyard.net>
 <aJZgH01YM9sFRkUO@CMGLRV3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJZgH01YM9sFRkUO@CMGLRV3>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 08, 2025 at 03:37:51PM -0500, Frederick Lawler
 wrote: > Hi Corey, > > On Thu, Aug 07, 2025 at 06:02:33PM -0500, Corey Minyard
 wrote: > > If the driver goes into any maintenance mode, disab [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
X-Headers-End: 1ukVZb-0003HO-2y
Subject: Re: [Openipmi-developer] [PATCH 2/4] ipmi: Disable sysfs access and
 requests in maintenance mode
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 08, 2025 at 03:37:51PM -0500, Frederick Lawler wrote:
> Hi Corey,
> 
> On Thu, Aug 07, 2025 at 06:02:33PM -0500, Corey Minyard wrote:
> > If the driver goes into any maintenance mode, disable sysfs access until
> > it is done.
> >
> 
> Why specifically sysfs reads during FW update state? Is there an expectation
> that during a FW update, that redfish/ipmi/etc... are chunking/buffering the
> FW payloads to the device, thus needs write access? I'm assuming that the
> device is blocking waiting for paylods to finish, so sending additional messages
> just get ignored?

In my experience, when the BMC goes into firmware update mode, it
doesn't behave normally.  But it's just my experience.  It general, it's
best not to mess with something during an update.

-corey

> 
> > If the driver goes into reset maintenance mode, disable all messages
> > until it is done.
> > 
> > Signed-off-by: Corey Minyard <corey@minyard.net>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index f124c0b33db8..72f5f4a0c056 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -2338,6 +2338,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
> >  
> >  	if (!run_to_completion)
> >  		mutex_lock(&intf->users_mutex);
> > +	if (intf->maintenance_mode_state == IPMI_MAINTENANCE_MODE_STATE_RESET) {
> > +		/* No messages while the BMC is in reset. */
> > +		rv = -EBUSY;
> > +		goto out_err;
> > +	}
> >  	if (intf->in_shutdown) {
> >  		rv = -ENODEV;
> >  		goto out_err;
> > @@ -2639,6 +2644,12 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
> >  	    (bmc->dyn_id_set && time_is_after_jiffies(bmc->dyn_id_expiry)))
> >  		goto out_noprocessing;
> >  
> > +	/* Don't allow sysfs access when in maintenance mode. */
> > +	if (intf->maintenance_mode_state) {
> > +		rv = -EBUSY;
> > +		goto out_noprocessing;
> > +	}
> > +
> >  	prev_guid_set = bmc->dyn_guid_set;
> >  	__get_guid(intf);
> >  
> > -- 
> > 2.43.0
> > 
> 
> Best, Fred


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
