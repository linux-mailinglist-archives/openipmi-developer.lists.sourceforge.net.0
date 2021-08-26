Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD6B3F9065
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Aug 2021 00:05:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mJNVG-0003Pp-8j; Thu, 26 Aug 2021 22:05:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mJNVE-0003Pc-P3
 for openipmi-developer@lists.sourceforge.net; Thu, 26 Aug 2021 22:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dwOtWoG+PZ8kvdaIpSTmuUJjMO3ip7EmqIAURRTeWho=; b=FqgQKwPsDzlvKuhuVBZdvRlCXD
 Bx1Kyfxo/GtFsqpJVD+U29wMlC5XQ7TwA3fIk6pGVzXlonYY6Z87z/1KHzMNpEPUhn1aXazDregkb
 Cb4mL5zWf6cyuF/McUCbScccYJvvG0OtHk7hBCbucvK0lOJpPo/uLwAX8SS+x4TNwGI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dwOtWoG+PZ8kvdaIpSTmuUJjMO3ip7EmqIAURRTeWho=; b=UGpzofsFESdxTty9jmkI6GeQvH
 WWMLPzFjS9oj+iitGnsWPVdl6ytHIWQVxt+w+0KaTXOqFS3FV7SRqrzOcJgMMm9xvDo0TUa7ujL7v
 Hv24YUuMR/hzCRHwuST4SW6lfberNE9Nh7rfLa8D4dD5qImPw3Nwc3j79xBb6CqpR+1Y=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mJNVB-002DSN-A7
 for openipmi-developer@lists.sourceforge.net; Thu, 26 Aug 2021 22:05:40 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 61-20020a9d0d430000b02903eabfc221a9so5514865oti.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 26 Aug 2021 15:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=dwOtWoG+PZ8kvdaIpSTmuUJjMO3ip7EmqIAURRTeWho=;
 b=dvMWGp9QzKhPyCpbUEJIwOWG0O5tPFAnjnfFcbjIvBJ3+RD0dqyMdjPxN7294BkO/o
 bk3piCTxP6hEWkC1kFCBRQWsOk95tQkUCCBcIEPZxVMKefHFo75o/RJCULQMp5TJR8n4
 1wG/gQZ2NpxJBDInlM9LNQJ1W1bzGnuvEx3o3cOy1ypTVZW01R9VMAE+FfD4RsPWqcWW
 cQwPLQNUXy8ctdBCRC6FWRcdtkcLQV8yUue8cMhQyHM6N9ap9nBEjeFh/OaoPsxGfKxQ
 7OYI/xmJ32imeHkxbks8VzILYEcuU8yNLe5NluNi3Wb2bbucxcgxuMt89Qrg70yLehZk
 45hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=dwOtWoG+PZ8kvdaIpSTmuUJjMO3ip7EmqIAURRTeWho=;
 b=IqKKscHSDrdMPGEjvy3uDRsXws5oM2r7lYxtBNrIuf9PLaQrjT2eEypnOewL1yMWA2
 ePTs1qSOf8vA2LlLjH0a7fUXH3lGJwFVceDXHOAnhBgSlVXQOoSn6BIN0lPx7bHiFLiq
 /Fp9j7Eshl3PYi1kFscyDjN6IfBO4muBhL4aBL2j0Zf/N7Kh3Q35tZTF3izFGNIb8ePM
 0nXotdKA8PYHbfcV4xbD8BR3zSVRmyR9uLmeDVB4ZQ73plNBiI0wDGXYhgIajQxx4nS+
 fDGsBdqRYbe4AuU60H6WMo4FvWV8VEaXSwsFd0Hbp8dHCg1SCcXeOo+crOdRYddzy2fw
 Ckrw==
X-Gm-Message-State: AOAM533I5YAvQU9mRoL5cuQmtby0V84RpxTCR/Wfg1pFUdIf2+vPaKcK
 xZhdt8YqNad754cO5BcFHn96S14jWQ==
X-Google-Smtp-Source: ABdhPJxdSf/GP+IxoGahIltduzj6sqgUp5zf2/mCg5GiD7ExXIUmzGvKgIsncdEqHguP5sD2XfgZwg==
X-Received: by 2002:a9d:71db:: with SMTP id z27mr5320290otj.292.1630015530942; 
 Thu, 26 Aug 2021 15:05:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id o68sm847656ota.33.2021.08.26.15.05.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 15:05:29 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f565:84b4:3d79:1c45])
 by serve.minyard.net (Postfix) with ESMTPSA id C09B21800EF;
 Thu, 26 Aug 2021 22:05:28 +0000 (UTC)
Date: Thu, 26 Aug 2021 17:05:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Pavel Cahyna <pcahyna@redhat.com>
Message-ID: <20210826220527.GB545073@minyard.net>
References: <20210123014322.GE1157510@minyard.net>
 <YSaKxX9tgS2IxCWH@redhat.com> <20210826013113.GA545073@minyard.net>
 <YSf4+iaT66qJCx2n@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSf4+iaT66qJCx2n@redhat.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 26, 2021 at 10:26:34PM +0200, Pavel Cahyna wrote:
 > Hello Corey, > > On Wed, Aug 25, 2021 at 08:31:13PM -0500, Corey Minyard
 wrote: > > On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahy [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mJNVB-002DSN-A7
Subject: Re: [Openipmi-developer] OpenIPMI 2.0.31 released
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 26, 2021 at 10:26:34PM +0200, Pavel Cahyna wrote:
> Hello Corey,
> 
> On Wed, Aug 25, 2021 at 08:31:13PM -0500, Corey Minyard wrote:
> > On Wed, Aug 25, 2021 at 08:24:05PM +0200, Pavel Cahyna wrote:
> > > at a quick glance at header file diffs, it seems to me that the Windows
> > > DLL changes are introducing library API changes even for non-Windows
> > > builds. Specifically, commit:
> > > 
> > > 26e0921e77b6db359e7b018e8d439fcd1222d891 seems to affect the API of libIPMIlanserv.so.0.0.1
> > > cb416caa52dd73e53ada88ccda4aa496154519e8 seems to affect the API of libOpenIPMIcmdlang.so.0.0.5
> > > 
> > > Is that correct? If so, it seems that those libraries should have their
> > > major version numbers bumped.
> > 
> > Yeah, I suppose.  lanserv is not that critical for library
> > compatibility, and I seriously doubt anyone is using cmdlang.  So I
> > didn't work about it.
> > 
> > If you like I can update these and do a new release.
> 
> Thank you for the quick reply. Updating the major version is certainly a
> valid approach, but I would actually prefer to preserve compatibility.
> This way maintainers of distribution packages would not need to worry
> whether those libraries are important enough or not to introduce a
> compatibility package (which would be the correct approach, but quite an
> inconvenience). Actually, preserving compatibility does not seem that
> difficult. It seems to be enough to declare those symbols as weak
> (conditionally - not on Windows) and call them only if the new function
> pointers are NULL. Attached is a patch which does just that (for
> lanserv). Let me know what you think and I can do similar approach for
> cmdlang.

This will work fine, I think.  A few things I would like to change...

Can you not modify dllvisibility.h and add all the include file stuff to
a separate include file?  It doesn't have anything to do with dll
visibility, so it really doesn't belong there.  And it make it easier to
yank out later.  Plus you can comment why the code is there.

Can you deprecate the weak symbols?  That way people will know they
shouldn't use them any more.

And can you send this in a more git-friendly manner, with a
Signed-off-by line and such?  Either a merge request or via
git-send-email or something like that.  That way you get into the logs
and get credit.

Thanks,

-corey

> 
> I tested the result using ipmi_sim: ipmi_sim from 2.0.29 dumps core when
> used together with the lanserv library from 2.0.31, but works after
> building the library with my patch. Unmodified ipmi_sim binary from
> 2.0.31 also works with the patched library.
> 
> Best regards, Pavel

> diff --git a/lanserv/OpenIPMI/lanserv.h b/lanserv/OpenIPMI/lanserv.h
> index 57ed757e..8f3d8bad 100644
> --- a/lanserv/OpenIPMI/lanserv.h
> +++ b/lanserv/OpenIPMI/lanserv.h
> @@ -236,6 +236,8 @@ typedef struct ipmi_tick_handler_s {
>      struct ipmi_tick_handler_s *next;
>  } ipmi_tick_handler_t;
>  
> +IPMI_LANSERV_WEAK(void, ipmi_register_tick_handler, (ipmi_tick_handler_t *handler));
> +
>  typedef struct oem_handlers_s
>  {
>      void *oem_data;
> diff --git a/lanserv/OpenIPMI/lanserv_dllvisibility.h b/lanserv/OpenIPMI/lanserv_dllvisibility.h
> index 73f55e63..8dfb0d9d 100644
> --- a/lanserv/OpenIPMI/lanserv_dllvisibility.h
> +++ b/lanserv/OpenIPMI/lanserv_dllvisibility.h
> @@ -56,6 +56,8 @@
>  #ifndef __LANSERV_DLLVISIBILITY_H
>  #define __LANSERV_DLLVISIBILITY_H
>  
> +#include <stddef.h>
> +
>  #if defined _WIN32 || defined __CYGWIN__
>    #ifdef BUILDING_IPMI_LANSERV_DLL
>      #ifdef __GNUC__
> @@ -63,12 +65,15 @@
>      #else
>        #define IPMI_LANSERV_DLL_PUBLIC __declspec(dllexport) // Note: actually gcc seems to also supports this syntax.
>      #endif
> +    // Calling back to user code not supported, set the weak symbol to NULL always.
> +    #define IPMI_LANSERV_WEAK(ret, sym, decl) static ret (*sym)decl = NULL
>    #else
>      #ifdef __GNUC__
>        #define IPMI_LANSERV_DLL_PUBLIC __attribute__ ((dllimport))
>      #else
>        #define IPMI_LANSERV_DLL_PUBLIC __declspec(dllimport) // Note: actually gcc seems to also supports this syntax.
>      #endif
> +#define IPMI_LANSERV_WEAK(ret, sym, decl) // Nothing
>    #endif
>    #define IPMI_LANSERV_DLL_LOCAL
>  #else
> @@ -79,6 +84,16 @@
>      #define IPMI_LANSERV_DLL_PUBLIC
>      #define IPMI_LANSERV_DLL_LOCAL
>    #endif
> +  #ifdef BUILDING_IPMI_LANSERV_DLL
> +    #ifdef __GNUC__
> +      #define IPMI_LANSERV_WEAK(ret, sym, decl) __attribute__ ((weak)) ret sym decl
> +    #else
> +      // Weak symbol not supported as we can not generate #pragma nor _Pragma from cpp
> +      #define IPMI_LANSERV_WEAK(ret, sym, decl) static ret (*sym)decl = NULL
> +    #endif
> +  #else
> +    #define IPMI_LANSERV_WEAK(ret, sym, decl) ret sym decl
> +  #endif
>  #endif
>  
>  #endif /* __LANSERV_DLLVISIBILITY_H */
> diff --git a/lanserv/OpenIPMI/mcserv.h b/lanserv/OpenIPMI/mcserv.h
> index c2a04648..de8d1440 100644
> --- a/lanserv/OpenIPMI/mcserv.h
> +++ b/lanserv/OpenIPMI/mcserv.h
> @@ -84,6 +84,19 @@ void ipmi_mc_set_chassis_control_func(lmc_data_t *mc,
>  						 void *cb_data),
>  				      void *cb_data);
>  
> +IPMI_LANSERV_WEAK(int, ipmi_mc_alloc_unconfigured, (sys_data_t *sys, unsigned char ipmb,
> +                                                    lmc_data_t **rmc));
> +
> +IPMI_LANSERV_WEAK(unsigned char, ipmi_mc_get_ipmb, (lmc_data_t *mc));
> +IPMI_LANSERV_WEAK(channel_t **, ipmi_mc_get_channelset, (lmc_data_t *mc));
> +IPMI_LANSERV_WEAK(ipmi_sol_t *, ipmi_mc_get_sol, (lmc_data_t *mc));
> +IPMI_LANSERV_WEAK(startcmd_t *, ipmi_mc_get_startcmdinfo, (lmc_data_t *mc));
> +IPMI_LANSERV_WEAK(user_t *, ipmi_mc_get_users, (lmc_data_t *mc));
> +IPMI_LANSERV_WEAK(pef_data_t *, ipmi_mc_get_pef, (lmc_data_t *mc));
> +
> +IPMI_LANSERV_WEAK(void, ipmi_resend_atn, (channel_t *chan));
> +IPMI_LANSERV_WEAK(msg_t *, ipmi_mc_get_next_recv_q, (channel_t *chan));
> +
>  /*
>   * FRUs have a semaphore that can be use to grant exclusive access.
>   * The semaphore is attempted to get before read and write operations,
> @@ -165,6 +178,8 @@ int check_msg_length(msg_t         *msg,
>  		     unsigned int  len,
>  		     unsigned char *rdata,
>  		     unsigned int  *rdata_len);
> +IPMI_LANSERV_WEAK(void, ipmi_set_chassis_control_prog,
> +                  (lmc_data_t *mc, const char *prog));
>  
>  void ipmi_mc_set_dev_revision(lmc_data_t *mc, unsigned char dev_revision);
>  void ipmi_mc_set_fw_revision(lmc_data_t *mc, unsigned char fw_revision_major,
> @@ -172,6 +187,10 @@ void ipmi_mc_set_fw_revision(lmc_data_t *mc, unsigned char fw_revision_major,
>  void ipmi_mc_set_aux_fw_revision(lmc_data_t *mc,
>  				 unsigned char aux_fw_revision[4]);
>  const char *get_lanserv_version(void);
> +IPMI_LANSERV_WEAK(int, sol_read_config,
> +                  (char **tokptr, sys_data_t *sys, const char **err));
> +
> +IPMI_LANSERV_WEAK(int, ipmi_mc_users_changed, (lmc_data_t *mc));
>  
>  /*
>   * Types and functions for registering handlers with the MC emulator.
> diff --git a/lanserv/callback.h b/lanserv/callback.h
> new file mode 100644
> index 00000000..eb9f18fa
> --- /dev/null
> +++ b/lanserv/callback.h
> @@ -0,0 +1,68 @@
> +/*
> + * callback.h
> + *
> + * MontaVista IPMI LAN server include file
> + *
> + * Author: MontaVista Software, Inc.
> + *         Corey Minyard <minyard@mvista.com>
> + *         source@mvista.com
> + *
> + * Copyright 2003,2004,2005 MontaVista Software Inc.
> + *
> + * This software is available to you under a choice of one of two
> + * licenses.  You may choose to be licensed under the terms of the GNU
> + * Lesser General Public License (GPL) Version 2 or the modified BSD
> + * license below.  The following disclamer applies to both licenses:
> + *
> + *  THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
> + *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> + *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
> + *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
> + *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
> + *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
> +` *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
> + *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> + *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
> + *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
> + *
> + * GNU Lesser General Public Licence
> + *
> + *  This program is free software; you can redistribute it and/or
> + *  modify it under the terms of the GNU Lesser General Public License
> + *  as published by the Free Software Foundation; either version 2 of
> + *  the License, or (at your option) any later version.
> + *
> + *  You should have received a copy of the GNU Lesser General Public
> + *  License along with this program; if not, write to the Free
> + *  Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + *
> + * Modified BSD Licence
> + *
> + * Redistribution and use in source and binary forms, with or without
> + * modification, are permitted provided that the following conditions
> + * are met:
> + *
> + *   1. Redistributions of source code must retain the above copyright
> + *      notice, this list of conditions and the following disclaimer.
> + *   2. Redistributions in binary form must reproduce the above
> + *      copyright notice, this list of conditions and the following
> + *      disclaimer in the documentation and/or other materials provided
> + *      with the distribution.
> + *   3. The name of the author may not be used to endorse or promote
> + *      products derived from this software without specific prior
> + *      written permission.
> + */
> +
> +#ifndef __CALLBACK_H
> +#define __CALLBACK_H
> +
> +/*
> + * Macros to get callbacks that exist either as function pointers in some structure
> + * or as functions in user code.
> + * Pointers take precedence, functions exist for backward compatibility.
> + */
> +
> +#define LANSERV_CB(obj, field, name) ( (obj)->field ? (obj)->field : (name) )
> +#define LANSERV_CB_IPMI(obj, name) LANSERV_CB(obj, name, ipmi_ ## name)
> +
> +#endif /* __CALLBACK_H */
> diff --git a/lanserv/config.c b/lanserv/config.c
> index 453750eb..d59e93fe 100644
> --- a/lanserv/config.c
> +++ b/lanserv/config.c
> @@ -65,6 +65,9 @@
>  #include <OpenIPMI/serserv.h>
>  #include <OpenIPMI/ipmbserv.h>
>  #include <OpenIPMI/persist.h>
> +#include <OpenIPMI/mcserv.h>
> +
> +#include "callback.h"
>  
>  void
>  read_persist_users(sys_data_t *sys)
> @@ -80,11 +83,11 @@ read_persist_users(sys_data_t *sys)
>  	if (!mc)
>  	    continue;
>  
> -	p = read_persist("users.mc%2.2x", sys->mc_get_ipmb(mc));
> +	p = read_persist("users.mc%2.2x", LANSERV_CB_IPMI(sys, mc_get_ipmb)(mc));
>  	if (!p)
>  	    continue;
>  
> -	users = sys->mc_get_users(mc);
> +	users = LANSERV_CB_IPMI(sys, mc_get_users)(mc);
>  	for (j = 0; j <= MAX_USERS; j++) {
>  	    void *data;
>  	    unsigned int len;
> @@ -124,14 +127,14 @@ write_persist_users(sys_data_t *sys)
>  	user_t *users;
>  	persist_t *p;
>  
> -	if (!mc || !sys->mc_users_changed(mc))
> +	if (!mc || !LANSERV_CB_IPMI(sys, mc_users_changed)(mc))
>  	    continue;
>  
> -	p = alloc_persist("users.mc%2.2x", sys->mc_get_ipmb(mc));
> +	p = alloc_persist("users.mc%2.2x", LANSERV_CB_IPMI(sys, mc_get_ipmb)(mc));
>  	if (!p)
>  	    return ENOMEM;
>  
> -	users = sys->mc_get_users(mc);
> +	users = LANSERV_CB_IPMI(sys, mc_get_users)(mc);
>  	for (j = 0; j <= MAX_USERS; j++) {
>  	    add_persist_int(p, users[j].valid, "%d.valid", j);
>  	    add_persist_int(p, users[j].link_auth, "%d.link_auth", j);
> @@ -834,12 +837,13 @@ read_config(sys_data_t *sys,
>  	} else if (strcmp(tok, "serial") == 0) {
>  	    err = serserv_read_config(&tokptr, sys, &errstr);
>  	} else if (strcmp(tok, "sol") == 0) {
> -	    err = sys->sol_read_config(&tokptr, sys, &errstr);
> +	    err = LANSERV_CB(sys, sol_read_config, sol_read_config)
> +			(&tokptr, sys, &errstr);
>  	} else if (strcmp(tok, "chassis_control") == 0) {
>  	    char *prog;
>  	    err = get_delim_str(&tokptr, &prog, &errstr);
>  	    if (!err)
> -		sys->set_chassis_control_prog(sys->mc, prog);
> +		LANSERV_CB_IPMI(sys, set_chassis_control_prog)(sys->mc, prog);
>  	} else if (strcmp(tok, "name") == 0) {
>  	    err = get_delim_str(&tokptr, &sys->name, &errstr);
>  	} else if (strcmp(tok, "startcmd") == 0) {
> @@ -860,7 +864,7 @@ read_config(sys_data_t *sys,
>  	    err = get_uchar(&tokptr, &ipmb, &errstr);
>  	    if (!err) {
>  		lmc_data_t *mc;
> -		err = sys->mc_alloc_unconfigured(sys, ipmb, &mc);
> +		err = LANSERV_CB_IPMI(sys, mc_alloc_unconfigured)(sys, ipmb, &mc);
>  		if (err == ENOMEM) {
>  		    errstr = "Out of memory";
>  		    err = -1;
> @@ -869,11 +873,11 @@ read_config(sys_data_t *sys,
>  		    err = -1;
>  		} else {
>  		    sys->mc = mc;
> -		    sys->cusers = sys->mc_get_users(mc);
> -		    sys->chan_set = sys->mc_get_channelset(mc);
> -		    sys->cpef = sys->mc_get_pef(mc);
> -		    sys->startcmd = sys->mc_get_startcmdinfo(mc);
> -		    sys->sol = sys->mc_get_sol(mc);
> +		    sys->cusers = LANSERV_CB_IPMI(sys, mc_get_users)(mc);
> +		    sys->chan_set = LANSERV_CB_IPMI(sys, mc_get_channelset)(mc);
> +		    sys->cpef = LANSERV_CB_IPMI(sys, mc_get_pef)(mc);
> +		    sys->startcmd = LANSERV_CB_IPMI(sys, mc_get_startcmdinfo)(mc);
> +		    sys->sol = LANSERV_CB_IPMI(sys, mc_get_sol)(mc);
>  		}
>  	    }
>  	} else if (strcmp(tok, "console") == 0) {
> diff --git a/lanserv/lanserv_ipmi.c b/lanserv/lanserv_ipmi.c
> index ccd60015..c3c2cdbe 100644
> --- a/lanserv/lanserv_ipmi.c
> +++ b/lanserv/lanserv_ipmi.c
> @@ -73,6 +73,9 @@
>  
>  #include <OpenIPMI/persist.h>
>  #include <OpenIPMI/extcmd.h>
> +#include <OpenIPMI/mcserv.h>
> +
> +#include "callback.h"
>  
>  static int
>  is_authval_null(uint8_t *val)
> @@ -512,7 +515,7 @@ lan_return_rsp(channel_t *chan, msg_t *msg, rsp_msg_t *rsp)
>  
>      return_rsp(lan, msg, NULL, rsp);
>  
> -    msg = lan->sysinfo->mc_get_next_recv_q(chan);
> +    msg = LANSERV_CB_IPMI(lan->sysinfo, mc_get_next_recv_q)(chan);
>      if (!msg)
>  	return;
>      while (msg) {
> @@ -531,7 +534,7 @@ lan_return_rsp(channel_t *chan, msg_t *msg, rsp_msg_t *rsp)
>  
>  	chan->free(chan, msg);
>  
> -	msg = lan->sysinfo->mc_get_next_recv_q(chan);
> +	msg = LANSERV_CB_IPMI(lan->sysinfo, mc_get_next_recv_q)(chan);
>      }
>      if (chan->recv_in_q)
>  	chan->recv_in_q(chan, 0);
> @@ -729,7 +732,7 @@ handle_get_channel_cipher_suites(lanserv_data_t *lan, msg_t *msg)
>      if (chan == 0xe)
>  	chan = lan->channel.channel_num;
>  
> -    channels = lan->sysinfo->mc_get_channelset(lan->channel.mc);
> +    channels = LANSERV_CB_IPMI(lan->sysinfo, mc_get_channelset)(lan->channel.mc);
>      channel = channels[chan];
>      if (!channel) {
>  	return_err(lan, msg, NULL, IPMI_NOT_PRESENT_CC);
> @@ -3202,7 +3205,7 @@ ipmi_lan_init(lanserv_data_t *lan)
>  
>      lan->tick_handler.handler = ipmi_lan_tick;
>      lan->tick_handler.info = lan;
> -    lan->sysinfo->register_tick_handler(&lan->tick_handler);
> +    LANSERV_CB_IPMI(lan->sysinfo, register_tick_handler)(&lan->tick_handler);
>  
>   out:
>      return rv;
> diff --git a/lanserv/marvell-bmc/marvell_mod.c b/lanserv/marvell-bmc/marvell_mod.c
> index b5b15e05..41a07b5c 100644
> --- a/lanserv/marvell-bmc/marvell_mod.c
> +++ b/lanserv/marvell-bmc/marvell_mod.c
> @@ -72,6 +72,7 @@
>  #include <OpenIPMI/lanserv.h>
>  #include <OpenIPMI/mcserv.h>
>  
> +#include "callback.h"
>  #include "wiw.h"
>  
>  #define PVERSION "2.0.12"
> @@ -3052,7 +3053,7 @@ ipmi_sim_module_init(sys_data_t *sys, const char *initstr_i)
>  	}
>      }
>  
> -    rv = sys->mc_alloc_unconfigured(sys, 0x20, &bmc_mc);
> +    rv = LANSERV_CB_IPMI(sys, mc_alloc_unconfigured)(sys, 0x20, &bmc_mc);
>      if (rv) {
>  	sys->log(sys, OS_ERROR, NULL,
>  		 "Unable to allocate an mc: %s", strerror(rv));
> @@ -3099,7 +3100,7 @@ ipmi_sim_module_init(sys_data_t *sys, const char *initstr_i)
>  	    }
>  	}
>  
> -	rv = sys->mc_alloc_unconfigured(sys, board_ipmb[num], &mc);
> +	rv = LANSERV_CB_IPMI(sys, mc_alloc_unconfigured)(sys, board_ipmb[num], &mc);
>  	if (rv) {
>  	    sys->log(sys, OS_ERROR, NULL,
>  		     "Unable to allocate an mc: %s", strerror(rv));
> @@ -3285,7 +3286,7 @@ ipmi_sim_module_post_init(sys_data_t *sys)
>  	 */
>  	unsigned char data[13];
>  	memset(data, 0, sizeof(data));
> -	data[4] = sys->mc_get_ipmb(bmc_mc);
> +	data[4] = LANSERV_CB_IPMI(sys, mc_get_ipmb)(bmc_mc);
>  	data[5] = 0; /* LUN */
>  	data[6] = 0x04; /* Event message revision for IPMI 1.5. */
>  	data[7] = 0x1d; /* System boot initiated. */
> diff --git a/lanserv/serial_ipmi.c b/lanserv/serial_ipmi.c
> index 8ba8f7d0..b7255341 100644
> --- a/lanserv/serial_ipmi.c
> +++ b/lanserv/serial_ipmi.c
> @@ -63,6 +63,7 @@
>  #include <OpenIPMI/ipmi_mc.h>
>  #include <OpenIPMI/ipmi_msgbits.h>
>  #include <OpenIPMI/serserv.h>
> +#include <OpenIPMI/mcserv.h>
>  
>  #define EVENT_BUFFER_GLOBAL_ENABLE	(1 << 2)
>  #define EVENT_LOG_GLOBAL_ENABLE		(1 << 3)
> @@ -1008,6 +1009,8 @@ vm_connected(serserv_data_t *si)
>      si->connected = 1;
>      if (si->sysinfo->resend_atn)
>  	si->sysinfo->resend_atn(&si->channel);
> +    else if (ipmi_resend_atn)
> +	ipmi_resend_atn(&si->channel);
>  }
>  
>  static void


> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
