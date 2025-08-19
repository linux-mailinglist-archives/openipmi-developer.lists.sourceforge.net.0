Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C97AFB2BBA2
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Aug 2025 10:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=25Pitxw/9Z9B8pm1+nNkIPq5o4RVxyoMR7VjrC/8I+A=; b=aipigPwXKmJKetp0yCJaak8jji
	1tqDa2yd9LepIKBAoFDacYYq+S3eqvUiwrkVYDReD5py5rui5UcEE4cF8glyvPbrDAMLL1ISut5yb
	4IMpORr/h+XBifF53Q09zmXwHi0Zh3TDnkKffX5HGmcZhXYTPU+gHUW4MkheLzZKPpb0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uoHZz-00059S-VW;
	Tue, 19 Aug 2025 08:20:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1uoHZy-00059L-Go
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 08:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a2kCG5TxrV0bcFvzgGNSNp6IBvTEBX5snohruMsoCpw=; b=hCB33CV2bO453ApSMvTMfLnPu8
 Y2TiKc60dtUdlADP1PIKw7gJfJBuRwFM2sifKIZXPCPokvwCVkpq3vJ1oZSTl+8VEqu/upgvoxsLZ
 t6jduIeRbBsRoTngq6D0ACxVV2Ng0bmwFOkX1HlqX6mT+UDynLgGIc9K3LuJVag1hcwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a2kCG5TxrV0bcFvzgGNSNp6IBvTEBX5snohruMsoCpw=; b=J
 Q0LW6Jc3LgVgghV/UH2XE90ot1JY2Bsg+FS47OmDhVFmKoK4uHDTKaQwNIxZZC03u3Cx3HPsb7xeM
 NBOWXbnypSfTZlTwWxZ3JPS/7pn6HbjIRb2rgCMYbojHPSyR94jDha96om7yyX/WCq6OW4/KmMF3A
 4FdXiobd5ou0acus=;
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uoHZx-0003WP-Ox for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 08:20:26 +0000
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-afca41c7d7fso1021381766b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Aug 2025 01:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1755591614; x=1756196414; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=a2kCG5TxrV0bcFvzgGNSNp6IBvTEBX5snohruMsoCpw=;
 b=orsrRet+1XXoWGH8/uz9fViR/zK7cThlVeUqnkb4dEdrusH5737xtl+RQioM8Cd/D6
 nUrLcvSMrZAQolf4MEEOemffljhL293+T4kU1H3jQaM+uT4mKqmWGQ308SZC5RD1byYZ
 +yWUR23hMbHIntM/d3Tk8Wnjiu7Fe/32tNb0o3ly7Im25ftOA21GsAaKGxyrNquFVzuN
 nY756S1elcRWFFSDMGOkws/o7/dg1aKD6PZN1XbV1CiAipgzQduUrTa+BJliNDSiE3VN
 WqiKtWoBSdLEnSPclW/7vEyBlbRolM3KQnnQ0wac8RboE6wuY+l0leqIe0dzspjBX40K
 og8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755591614; x=1756196414;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=a2kCG5TxrV0bcFvzgGNSNp6IBvTEBX5snohruMsoCpw=;
 b=f40ZT2ncWV/opM7wsUY5FJZxktrD+Z1WO9J8j0uJBcNq0/KrRTOxjijO1knrDJGP1x
 49zv7tWlBXIrFnzt0nMqiPjfZL3ZLoWCLGLCIm/4zevgEDf6yYZshZSBBGOetosAkiRJ
 j4wASlRPyCWJGNA5swLKxgwzbklX+9OnfmmSk3Xq0gMhVCTdb46B4zw0Soii/RIjrMKq
 dBHVvAGz3G0hTHEFvwDuWvVFMrMOVWJsY+xcQdHoHhpKGUiG/1X1yjGFtaELq7xlETiM
 76mOngavVCW17eKn2XCC/OlPhp/QxbpVWYi2RF/96rFpNGbcEq8vbzI1/ayKUXE4bram
 BQTA==
X-Gm-Message-State: AOJu0Yy9ZdM7zczukn1Oa7IJQcouEgYAqWH4gOMWomMknAPolrqCRtC+
 Cj9xzLgZki1qzncitwd6TuLrkMO+rp0vkPFMvG7FaB5Fz0YJIw5ApQIsVhFSIVbkPBhhb3JsGpm
 pBVsb
X-Gm-Gg: ASbGncuqp2pmDU2CmQjp1crzSsfvgfK0yWQHgKSQjQCSRgnNcG+oPeLmVmXMMEn/MKk
 lDHlC9a2M/Ft6kExG6zQMwn3vjVBRBS0N74XVa8YBRGYPKwR+skh3Mzx1IB9FHNjEHnDGUUBHE4
 RbfRm6xpwKe69WbBFGRjElv+BEAIqan6O1oUQNDq0IUtbLC5lXhjotwyjFU9PPNCYrkf9TCXVfj
 Jp+CHDNmssQUs1m1/pMzjZ1sZIWxVyu/ZayjW8a5WaMHYl93fUabDu5aqpFbvQrKrcQxymoAIa8
 tqWyHpIpbv0xQqOLdF4cnW9xJkf+ubqsfb5aENQOO2Ln9iVEmC1/zsiSOinfDgFGy3wRvK+/3yg
 2lNsSfQWnOc73rTgsE/+ZNgWghrKI+lTR0m7gidflj70=
X-Google-Smtp-Source: AGHT+IHOXs1sVm7hS4K40J+RPyZEtDde21i1hZTYfA1NESr1a+PsUXJLJQmyYed7HqRiF+FkaayIbg==
X-Received: by 2002:a05:600c:4f86:b0:453:6c45:ce14 with SMTP id
 5b1f17b1804b1-45b43f6b29cmr11573475e9.4.1755590030772; 
 Tue, 19 Aug 2025 00:53:50 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45a1c6cf151sm204781785e9.8.2025.08.19.00.53.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 00:53:50 -0700 (PDT)
Date: Tue, 19 Aug 2025 10:53:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aKQti9UyK0MVAxdW@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Corey Minyard, Commit 3be997d5a64a ("ipmi:msghandler:
 Remove srcu from the ipmi user structure") from Mar 18, 2025 (linux-next),
 leads to the following Smatch static checker warning:
 drivers/char/ipmi/ipmi_msghandler.c:5265
 ipmi_free_recv_msg() warn: sleeping in atomic context 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uoHZx-0003WP-Ox
Subject: [Openipmi-developer] [bug report] ipmi:msghandler: Remove srcu from
 the ipmi user structure
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Corey Minyard,

Commit 3be997d5a64a ("ipmi:msghandler: Remove srcu from the ipmi user
structure") from Mar 18, 2025 (linux-next), leads to the following
Smatch static checker warning:

	drivers/char/ipmi/ipmi_msghandler.c:5265 ipmi_free_recv_msg()
	warn: sleeping in atomic context

drivers/char/ipmi/ipmi_msghandler.c
    5262 void ipmi_free_recv_msg(struct ipmi_recv_msg *msg)
    5263 {
    5264         if (msg->user && !oops_in_progress)
--> 5265                 kref_put(&msg->user->refcount, free_ipmi_user);

The call to vfree() sleeps (unless you're in an IRQ handler).

    5266         msg->done(msg);
    5267 }

The problem is:
drivers/char/ipmi/ipmi_msghandler.c
  1331  static void _ipmi_destroy_user(struct ipmi_user *user)
  1332  {
  1333          struct ipmi_smi  *intf = user->intf;
  1334          int              i;
  1335          unsigned long    flags;
  1336          struct cmd_rcvr  *rcvr;
  1337          struct cmd_rcvr  *rcvrs = NULL;
  1338          struct ipmi_recv_msg *msg, *msg2;
  1339  
  1340          if (!refcount_dec_if_one(&user->destroyed))
  1341                  return;
  1342  
  1343          if (user->handler->shutdown)
  1344                  user->handler->shutdown(user->handler_data);
  1345  
  1346          if (user->handler->ipmi_watchdog_pretimeout)
  1347                  smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_WATCHDOG);
  1348  
  1349          if (user->gets_events)
  1350                  atomic_dec(&intf->event_waiters);
  1351  
  1352          /* Remove the user from the interface's list and sequence table. */
  1353          list_del(&user->link);
  1354          atomic_dec(&intf->nr_users);
  1355  
  1356          spin_lock_irqsave(&intf->seq_lock, flags);
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Holding a spinlock.

  1357          for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
  1358                  if (intf->seq_table[i].inuse
  1359                      && (intf->seq_table[i].recv_msg->user == user)) {
  1360                          intf->seq_table[i].inuse = 0;
  1361                          smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_MESSAGES);
  1362                          ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Called here.

  1363                  }
  1364          }
  1365          spin_unlock_irqrestore(&intf->seq_lock, flags);

regards,
dan carpenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
