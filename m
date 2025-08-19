Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEB7B2CC52
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Aug 2025 20:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/9zMXfDc0KovqwIqak8+wzJSipk1B4kL6JAoFTQkNnU=; b=TlOwSIKWB6ES0KrSxIkDa4SOs1
	7bQ9OnvyvbVdDDlhATw+Np53c2PMK2PFzT8E3waPdlshb1K54VEgtlA+ajhic4AiZbhFqIAaZpiCz
	PnQNkM+lqphMw/Sd4Th+b9UQymu/gh7ikfpY4zSpsAERZ4q/7OtJDsvFtkS5ts/Xjiyc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uoRKc-0000dc-Mz;
	Tue, 19 Aug 2025 18:45:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uoRKb-0000dU-Cl
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 18:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=23UXpj+u5hHN2tDprz00eFVNVdMUfSoOXRSCWluTNSc=; b=Fm8vhpNwNXHvk9CooEkUoTLiqN
 vFg6AltXJwoIQKPL/PH8hA/0rn7voBhK8gBcp5QSB7mMQBCFUwtkWfqi+QrnTa4tfdCz5XJp6bvJy
 Olt5ucm+JIg2W3rJ4e2ShOeVIqzL1ciXtqyDH/Xi93+4RT5OZWT2sr3RLfcyz+tgLmck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=23UXpj+u5hHN2tDprz00eFVNVdMUfSoOXRSCWluTNSc=; b=NjCJJGewe8/kyK0fVxAb5G2r5n
 DBBNWOtiudz42HdWKiMSFuW/MCYPIbRowtnfLYLFn1ciebyUVyCbUmGkLUX/HR+svUxWEfroQWu/o
 CvcL3omT0myarrdR/+g2Y1tbuSWrJBm2SRtknVIF69z9mm7FGq7aVbbRx1KxBcbfHhRE=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uoRKZ-0005Bx-Rb for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 18:45:13 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-74381ee9bc9so4095943a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Aug 2025 11:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1755629101; x=1756233901;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=23UXpj+u5hHN2tDprz00eFVNVdMUfSoOXRSCWluTNSc=;
 b=zIdad60U2zuN+4xRI4WL9BSt3Lv7nmxB7wR/kY2qu1u1ZXDXmDOQ9fAA8FRDX5fafQ
 PX2Vy2DeO6UFwnfK3iUfdUKI2Ur09befq4CJ+i1krxLuBxZ1GtfmGAHzxXZFgWfLNsvx
 oCiBQEATDHv3MspBzbpT6B8c2kHoqiZP+ERafyjS4cfhEpniaNeweT2zzau13uNGhlyl
 jjx8bUdA7oSHdF2rqb0p84cs0p4bXfxRTECs2IUwSUt42KI1QVYL35Zu67VVw7gNpQiO
 Mc7j2lNWPkdHDqpJD+YiFiv/tnP5t4bIbLD/SS1h8IMSdb77fUw6HtIl7kvNFd/dnxJy
 LILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755629101; x=1756233901;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=23UXpj+u5hHN2tDprz00eFVNVdMUfSoOXRSCWluTNSc=;
 b=aDaRPYLtgPyNb9uNN2D60ferJU4J1G2QNp2FAPAYhoeoWHX5Nvzfz93Oz5iRcKT/gS
 R3VUnA4z7V+yD8tUrGSZ1rn23c2K48roS7dKaoCdWRXnDcSIzZwYbqdRJws8pF5sXQWq
 fEc/kvUWPiyv832DQDM3zvhwAne2oxad1xp3sfY54fPVnN3fDc2WrhY2jw2opeTzcv+H
 VcJuXEGbMqweUv/ahwo7nOMTQxfRygtGTz+OvZVfKeBSCcN7N/FOPU5kIgDFMO83f+Wk
 0WUXoKuv1Q/Vm2hOQJpF8vGpvF1LNVb+WZrlz2ufAYC4zIv64KXijNctsWhxx1IvKoTT
 7WAA==
X-Gm-Message-State: AOJu0YzRqlX2Y3o0T0c2SMeURNS2NUqZFTsdeRh7p8gOOZBQVGJzP3Lm
 AbHEIFbuRLX6L1fbtxbTgE4EFpnS/IskNN5Zlj2+WhS5CDhRIFz0Fa6Fz5BLmYUEBGguKC1nJwk
 vneaQ
X-Gm-Gg: ASbGncu9Tg54xE8KteRvsLj7qbmlAyH+9wodGlAzOa7A1ndaXuzIQQuabUB5b4VO06K
 ABXzOyqfpHw9UzZNYFW8VWxQbIaj+zbm5m9kVR9nx19GAPEUv5/GEuNQf+0LHVNJGHHcPWcT9sH
 LGg5B8zTWl9x+acotTem9eozhuQFcrVpiUS8ALfVG5MAhqn9imyztdEzlAfmHeYzgOlrX5kw1JA
 vf49LLDZYoXndw0EGCWiEq9i4Jd6XDh/ycldqADhcyA02xr2KEgjHQVtHDayM/cLdZrNd3eTtTv
 APAecPv5m9eoampTcLvwMipHfKb6gBm1Xwki7ALiaZsCDGkBmiBYegNtpAACeSyP+qqmlggGaFF
 ImLDM1T24Lw+OymVeT2BgdhdegQ==
X-Google-Smtp-Source: AGHT+IH6cbn0J6d7bC1nKxRLQufuMRRwy+MGhr//uzzfaEyEjAO0uCm2NnUkXAZxTYb9z/ZsIfNTlw==
X-Received: by 2002:a05:6808:6605:b0:434:e5c:3d7c with SMTP id
 5614622812f47-436cdcb422fmr2466666b6e.9.1755627684876; 
 Tue, 19 Aug 2025 11:21:24 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:27f3:9dae:5b7b:9959])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-435ed205941sm2371655b6e.32.2025.08.19.11.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 11:21:24 -0700 (PDT)
Date: Tue, 19 Aug 2025 13:21:19 -0500
From: Corey Minyard <corey@minyard.net>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <aKTAn2lAnkQJUPiU@mail.minyard.net>
References: <aKQti9UyK0MVAxdW@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aKQti9UyK0MVAxdW@stanley.mountain>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 19, 2025 at 10:53:47AM +0300,
 Dan Carpenter wrote:
 > Hello Corey Minyard, > > Commit 3be997d5a64a ("ipmi:msghandler: Remove
 srcu from the ipmi user > structure") from Mar 18, 2025 (linux-n [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.210.46 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uoRKZ-0005Bx-Rb
Subject: Re: [Openipmi-developer] [bug report] ipmi:msghandler: Remove srcu
 from the ipmi user structure
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Aug 19, 2025 at 10:53:47AM +0300, Dan Carpenter wrote:
> Hello Corey Minyard,
> 
> Commit 3be997d5a64a ("ipmi:msghandler: Remove srcu from the ipmi user
> structure") from Mar 18, 2025 (linux-next), leads to the following
> Smatch static checker warning:
> 
> 	drivers/char/ipmi/ipmi_msghandler.c:5265 ipmi_free_recv_msg()
> 	warn: sleeping in atomic context

Thanks, I have a fix in the next tree, I'll get it up to Linus after
letting it soak there a bit.

-corey

> 
> drivers/char/ipmi/ipmi_msghandler.c
>     5262 void ipmi_free_recv_msg(struct ipmi_recv_msg *msg)
>     5263 {
>     5264         if (msg->user && !oops_in_progress)
> --> 5265                 kref_put(&msg->user->refcount, free_ipmi_user);
> 
> The call to vfree() sleeps (unless you're in an IRQ handler).
> 
>     5266         msg->done(msg);
>     5267 }
> 
> The problem is:
> drivers/char/ipmi/ipmi_msghandler.c
>   1331  static void _ipmi_destroy_user(struct ipmi_user *user)
>   1332  {
>   1333          struct ipmi_smi  *intf = user->intf;
>   1334          int              i;
>   1335          unsigned long    flags;
>   1336          struct cmd_rcvr  *rcvr;
>   1337          struct cmd_rcvr  *rcvrs = NULL;
>   1338          struct ipmi_recv_msg *msg, *msg2;
>   1339  
>   1340          if (!refcount_dec_if_one(&user->destroyed))
>   1341                  return;
>   1342  
>   1343          if (user->handler->shutdown)
>   1344                  user->handler->shutdown(user->handler_data);
>   1345  
>   1346          if (user->handler->ipmi_watchdog_pretimeout)
>   1347                  smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_WATCHDOG);
>   1348  
>   1349          if (user->gets_events)
>   1350                  atomic_dec(&intf->event_waiters);
>   1351  
>   1352          /* Remove the user from the interface's list and sequence table. */
>   1353          list_del(&user->link);
>   1354          atomic_dec(&intf->nr_users);
>   1355  
>   1356          spin_lock_irqsave(&intf->seq_lock, flags);
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Holding a spinlock.
> 
>   1357          for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
>   1358                  if (intf->seq_table[i].inuse
>   1359                      && (intf->seq_table[i].recv_msg->user == user)) {
>   1360                          intf->seq_table[i].inuse = 0;
>   1361                          smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_MESSAGES);
>   1362                          ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
>                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Called here.
> 
>   1363                  }
>   1364          }
>   1365          spin_unlock_irqrestore(&intf->seq_lock, flags);
> 
> regards,
> dan carpenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
