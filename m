Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4889A374A3C
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 May 2021 23:36:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lePC5-0005kp-4k; Wed, 05 May 2021 21:36:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lePC3-0005ki-At
 for openipmi-developer@lists.sourceforge.net; Wed, 05 May 2021 21:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ASAFrRhfZJAuuXnQhdECK4EYYJ/yx+VALPvwUOZmAng=; b=FYNsl/mVZPeMQR7mUhYYsyyjv3
 pj03Yi+xgaSYYsrvpgt6lV3BwziN56ppCjvu4gBkp/Vs5v7cI34Wl64glX+J9Zheq84hkbAuYTcXo
 pEImozvb8fj4EdIpIPbS99EvQekjjmH2sEU5axal99p51GfL4tiIKNBJ6s3VPt/y7dIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ASAFrRhfZJAuuXnQhdECK4EYYJ/yx+VALPvwUOZmAng=; b=jwZt2RsdGFRKWvc05w2QkAMz3/
 SDvDNYaglvFeI8KkqruLSBo95xvO410LGA2EvTHNcYUTfSby4ygm4gFPVuTUNph4T07WUa2D9XeqQ
 uiWdemIHvrziDCXCiQyR0UnknV14VWSpEMhJudtVVltZp5Vll9UdGRzKyiFmQ9mS0GeE=;
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lePBz-002I3n-LX
 for openipmi-developer@lists.sourceforge.net; Wed, 05 May 2021 21:36:32 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 h9-20020a4a94090000b02901f9d4f64172so808810ooi.5
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 May 2021 14:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ASAFrRhfZJAuuXnQhdECK4EYYJ/yx+VALPvwUOZmAng=;
 b=UQBHTsd6dg9T9ke2XtND1OEHjTbMAHZKOcRejHpqEkMSA8VvGdCvXaQGA0oYPvPM/H
 IdVmCvc7MkHi/KbghU0uHk3a84VU0iKhuiP68j0brUhHUzXja+rBoRkhtEDX03qHQT89
 BQFo0ZNcb7AKkDMh70spnFD4OratrHFB529oTYyaPONcr2nFshI8y65e2KClv4t54ww0
 fFDfkcI3daK1Ce0Xs7cSVsEkFkATmSBXuCEZT5rm5gse/+w6wWXGkUXHCjEF5pN8uayC
 wYK/dNpfQTKjf84PaRY3TRnKjheJeTlFUde8V87wlOf9yOX07fD/3xnv4qGQFFXhth5V
 e/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=ASAFrRhfZJAuuXnQhdECK4EYYJ/yx+VALPvwUOZmAng=;
 b=dcwUG8QGb+W2uaMA8BmZHsJ13iYUvZVM/ef17MzuI2r8W3SeL/yODZOsOithu5gmn7
 ybxBIQlnL/tjmNgP5BhrjTtgWTZJm/Rqto5EIGzxiMgkeU4aLcNLN+W7tcGBUOQZ59OV
 a0OuzarKgmshDCzAcJhn9WnLD2n5EPUqITWH4mqSRnwkcS9eH9Yo50xb2eYexNlAX1bh
 IwNynHFKOe5yvvmdS+54ldg7SW6sCOJBUhFSkfcyeYQ+WY7+LNdxEf01oU5HBe1d70Rl
 r8I+HOE8zPXshTlHm1wJuUjZi19BhttF9ClP/TjKskBA2H0AudAEp2fchumX6pkml+iE
 uefQ==
X-Gm-Message-State: AOAM530LpnuxVhMQ5inm3eSL0Y32tUXHwiOoX6B2PShkNlHF3vAFEkfN
 f/28tuF9X7Q9G3hMdqmHRw==
X-Google-Smtp-Source: ABdhPJxxFnf49bCzAFbvFQy7xseUReJLt8NvGBpmITnbB674TY/XkjhWPo8QtadLHlcNI2L6SbGNBw==
X-Received: by 2002:a4a:8247:: with SMTP id t7mr546769oog.53.1620250581982;
 Wed, 05 May 2021 14:36:21 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id d19sm127738oop.26.2021.05.05.14.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 14:36:21 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8197:ac24:85b7:5284])
 by serve.minyard.net (Postfix) with ESMTPSA id 8BBDC1801D9;
 Wed,  5 May 2021 21:36:20 +0000 (UTC)
Date: Wed, 5 May 2021 16:36:19 -0500
From: Corey Minyard <minyard@acm.org>
To: Ryan O'Leary <ryanoleary@google.com>
Message-ID: <20210505213619.GS18645@minyard.net>
References: <20210317001036.1097763-1-ryanoleary@google.com>
 <CAKVu-U=Om6CQF7DVkzp487=R_a77Qbi_grKQ7J-HPVZ_QR7DfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKVu-U=Om6CQF7DVkzp487=R_a77Qbi_grKQ7J-HPVZ_QR7DfA@mail.gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lePBz-002I3n-LX
Subject: Re: [Openipmi-developer] [PATCH 1/1] ipmi/watchdog: Add
 WDIOC_GETTIMELEFT ioctl
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, May 04, 2021 at 01:59:49PM -0700, Ryan O'Leary wrote:
> Hi, please let me know if there's anything missing for review.

Only my negligence.

Unfortunately I can't add anything to my next tree at the moment, I have
to wait until the merge window closes.

Anyway, on the patch, if you look at the definition of msg_wait, it
says:

/*
 * We use a mutex to make sure that only one thing can send a set a
 * message at one time.  The mutex is claimed when a message is sent
 * and freed when both the send and receive messages are free.
 */

So if you use msg_wait, you need to grab that mutex, or bad things can
happen.

However, that means that a non-critical operation, grabbing the time
left, can result in blocking a more critical operations, pinging the
watchdog.  So it would be better if you could use another set of
messages for doing this.

-corey

> 
> On Tue, Mar 16, 2021 at 5:11 PM Ryan O'Leary <ryanoleary@google.com> wrote:
> 
> > This is the same ioctl the rest of the watchdogs support. GETTIMELEFT
> > returns the number of seconds in the countdown -- useful for testing
> > whether the watchdog is functioning.
> >
> > Signed-off-by: Ryan O'Leary <ryanoleary@google.com>
> > ---
> >  drivers/char/ipmi/ipmi_watchdog.c | 75 +++++++++++++++++++++++++++++++
> >  1 file changed, 75 insertions(+)
> >
> > diff --git a/drivers/char/ipmi/ipmi_watchdog.c
> > b/drivers/char/ipmi/ipmi_watchdog.c
> > index 32c334e34d55..f253c8667395 100644
> > --- a/drivers/char/ipmi/ipmi_watchdog.c
> > +++ b/drivers/char/ipmi/ipmi_watchdog.c
> > @@ -456,6 +456,71 @@ static int ipmi_set_timeout(int do_heartbeat)
> >         return rv;
> >  }
> >
> > +static unsigned int __ipmi_get_timeout(struct ipmi_smi_msg  *smi_msg,
> > +                                      struct ipmi_recv_msg *recv_msg,
> > +                                      int                  *countdown)
> > +{
> > +       struct kernel_ipmi_msg            msg;
> > +       int                               rv = 0;
> > +       struct ipmi_system_interface_addr addr;
> > +
> > +
> > +       addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
> > +       addr.channel = IPMI_BMC_CHANNEL;
> > +       addr.lun = 0;
> > +
> > +       msg.netfn = 0x06;
> > +       msg.cmd = IPMI_WDOG_GET_TIMER;
> > +       msg.data = NULL;
> > +       msg.data_len = 0;
> > +       rv = ipmi_request_supply_msgs(watchdog_user,
> > +                                     (struct ipmi_addr *) &addr,
> > +                                     0,
> > +                                     &msg,
> > +                                     NULL,
> > +                                     smi_msg,
> > +                                     recv_msg,
> > +                                     1);
> > +       if (rv) {
> > +               pr_warn("get timeout error: %d\n", rv);
> > +               return rv;
> > +       }
> > +
> > +       wait_for_completion(&msg_wait);
> > +
> > +       if (recv_msg->msg.data_len < 9) {
> > +               pr_warn("get timeout response size: %d (expected 9)\n",
> > +                       recv_msg->msg.data_len);
> > +               return -EIO;
> > +       }
> > +
> > +       if (recv_msg->msg.data[0] != 0)  {
> > +               pr_warn("get timeout completion code error: %d\n",
> > +                       recv_msg->msg.data[0]);
> > +               return -EIO;
> > +       }
> > +
> > +       *countdown = WDOG_GET_TIMEOUT(recv_msg->msg.data[7],
> > recv_msg->msg.data[8]);
> > +
> > +       return rv;
> > +}
> > +
> > +static int _ipmi_get_timeout(int *countdown)
> > +{
> > +       int rv;
> > +
> > +       if (!watchdog_user)
> > +               return -ENODEV;
> > +
> > +       atomic_set(&msg_tofree, 2);
> > +
> > +       rv = __ipmi_get_timeout(&smi_msg,
> > +                               &recv_msg,
> > +                               countdown);
> > +
> > +       return rv;
> > +}
> > +
> >  static atomic_t panic_done_count = ATOMIC_INIT(0);
> >
> >  static void panic_smi_free(struct ipmi_smi_msg *msg)
> > @@ -729,6 +794,16 @@ static int ipmi_ioctl(struct file *file,
> >                         return -EFAULT;
> >                 return 0;
> >
> > +       case WDIOC_GETTIMELEFT:
> > +               val = 0;
> > +               i = _ipmi_get_timeout(&val);
> > +               if (i)
> > +                       return i;
> > +               i = copy_to_user(argp, &val, sizeof(val));
> > +               if (i)
> > +                       return -EFAULT;
> > +               return 0;
> > +
> >         default:
> >                 return -ENOIOCTLCMD;
> >         }
> > --
> > 2.31.0.rc2.261.g7f71774620-goog
> >
> >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
