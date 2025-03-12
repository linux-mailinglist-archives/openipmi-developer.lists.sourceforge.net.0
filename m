Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5046A5EAAB
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Mar 2025 05:38:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tsaKP-0003dY-CJ;
	Thu, 13 Mar 2025 04:37:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pbonzini@redhat.com>) id 1tsQw6-0007c9-L8
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 18:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kg8OG6fCTKrHasfY8Q5mZEHdaUAY73IbW5wsrfqydq4=; b=JAsBYQNT5K7oyiU1/YKC+461Az
 cMmOrwXSq2JSe4pgwLB66vgr17l2uA78a8qHnM3B5+KzRnzygfVw/GdjoNby8tWcH2lug0VB8ohce
 FfZvEu13xZSg8EKBci/pGqK1q04OecBjOwXFIAjf3zhNyPYkkucePaqp/124tYSi6w9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kg8OG6fCTKrHasfY8Q5mZEHdaUAY73IbW5wsrfqydq4=; b=I7aOf98EyZ02d0KVkfw7HF58dk
 hNow3lsm/Bop8UFCMjhlzMCbtlIdKvo2EfCXLu49sLUpsrjXGf06XRqguLlFK29GG7qnvst00OtKc
 6Hk7+JzAg81NBzDD97Z9hmnwbz2wkWU5hxopZEzx/BvEOxt/eJLYAqZu/l1HFLJMvQw0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsQvz-0002xC-7I for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 18:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1741804552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=kg8OG6fCTKrHasfY8Q5mZEHdaUAY73IbW5wsrfqydq4=;
 b=OAYNAVKxy+qNeFsADcRAFESdy3YT1resb3D8eJUP+43eDbe+DVkCAM3r2A9VSVPqPBWOfA
 bE/Byf18RvPqVpghKm3YkE6zc/iRozFFH3XHKNCmp16B8XXYsh4D45NVa753m0kgFUwHZK
 kM0PTCs2PNgRARpxkyPBIir4wC/djCg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-400-qlKupD63MQezmyy2Sjl2GA-1; Wed, 12 Mar 2025 14:35:50 -0400
X-MC-Unique: qlKupD63MQezmyy2Sjl2GA-1
X-Mimecast-MFC-AGG-ID: qlKupD63MQezmyy2Sjl2GA_1741804550
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43943bd1409so830805e9.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Mar 2025 11:35:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741804549; x=1742409349;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kg8OG6fCTKrHasfY8Q5mZEHdaUAY73IbW5wsrfqydq4=;
 b=FCtH3CvrqD9O2I3ck8y95B7r5aN2OQjQsK2Bn2No8MuoUE7lPYoWL20EwPuC5m2AZm
 2kFuq6jJD2IKtmSdK3dOEIxzU+lonP43CvfNitFpK4a9HYcK+EPwsfAt4ALzlhz2mnGa
 cgEzyy8Vw+KUQvJ56Cji+fcV2c5kE4av9XE3u9AAE414535wa/GiSw4sTcP7Bj8QAj+U
 arR3myUjkA0G0x0b0EW7g56+cZbGNHd5iroxN85dTYaNZCUapBGHZxtOjONoSVqvtbqt
 I6GOBXgFaeKNb0rgVGNA+ZBTuFh84waXtT9aA+ZD9fHQvjism1JqCkGHTKAmYFFt6jnk
 Ck1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSBTo3SkYQALq44TWOwxESxNlLMN6mKp77PGwCOvHbEZpP6XTqJg/mifbX6BWmsvTTaTl602c8Oee/OUXsTg6qfs4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw6+Dcu79OIu94w3O8GwP771AmdikxyJ6j9gR3/PZ2Pd3vUSNfk
 enPhi/aFnNGVE2qf9uIWob4v2jA9yM023IjUSiTI2pjdqyKvNsWrfo0pBdGLVxFRco/qXTMsUed
 K6+etxcF4ePeJPHaCiYmGcnaPuCZ+fDDstkEAm0J5fG3JHc034wNgEvvzaGB6tI3qxWzpBmb/cI
 EqGw==
X-Gm-Gg: ASbGncvV5ya56tXzkZzy1WDzH/ZatZT7pHcsDgES5ZQcW9u9smUMSQdgXaEvK56P+BI
 sOFhjaMJgTJ5e4mx82w/RPPnRuyIiqsntN6EwPG+qqhOBz03KMwbLqevI7XMuV09xdk5hJ0g4xx
 OuOjspj+rCdSJW67fvAESZWNCMtuzWbd2Z6mbO7FETP7AaiaxVd/4x4xxZu1FCILZ1kWHC8B3DX
 +PAbcvIyGqe0sx32BW6LhpHIY494KooS/Bh7irCOTwXwA8kP2+zjusQ4Cd8PovMF44tIS+eJxBH
 H4N6ItOvIzbob+Zh1W0xzA==
X-Received: by 2002:a05:600c:154c:b0:43c:f63c:babb with SMTP id
 5b1f17b1804b1-43cf63cc031mr103512895e9.1.1741804549607; 
 Wed, 12 Mar 2025 11:35:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgUwihZCzD7+DVSttzbZ8rO0kvBaS+3OmjiSWBjMucBzvhILF5dcq8VX5WPbUXHctg2KmujA==
X-Received: by 2002:a05:600c:154c:b0:43c:f63c:babb with SMTP id
 5b1f17b1804b1-43cf63cc031mr103512755e9.1.1741804549186; 
 Wed, 12 Mar 2025 11:35:49 -0700 (PDT)
Received: from [192.168.10.81] ([176.206.122.167])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-43d0a8d068esm28753615e9.33.2025.03.12.11.35.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Mar 2025 11:35:48 -0700 (PDT)
Message-ID: <a006b1db-5cdd-4f73-b230-8fd4abfbfc7a@redhat.com>
Date: Wed, 12 Mar 2025 19:35:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: paulmck@kernel.org, Rik van Riel <riel@surriel.com>
References: <20250312131932.44d901f7@fangorn>
 <e28d914d-5842-4bfa-8208-9ac34fd38a95@paulmck-laptop>
From: Paolo Bonzini <pbonzini@redhat.com>
Autocrypt: addr=pbonzini@redhat.com; keydata=
 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
In-Reply-To: <e28d914d-5842-4bfa-8208-9ac34fd38a95@paulmck-laptop>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KNTpV_JrQYqfkJyX81d5hKUJ6RMXTU6UC4VXx9Yes_Q_1741804550
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/12/25 18:29, Paul E. McKenney wrote: > On Wed, Mar 12, 
 2025 at 01:19:32PM -0400,
 Rik van Riel wrote: >> diff --git a/drivers/char/ipmi/ipmi_msghandler.c
 b/drivers/char/ipmi/ipmi_msghandler.c >> i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tsQvz-0002xC-7I
X-Mailman-Approved-At: Thu, 13 Mar 2025 04:37:52 +0000
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 kernel-team@meta.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 3/12/25 18:29, Paul E. McKenney wrote:
> On Wed, Mar 12, 2025 at 01:19:32PM -0400, Rik van Riel wrote:
>> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
>> index 1e5313748f8b..a2823763fd37 100644
>> --- a/drivers/char/ipmi/ipmi_msghandler.c
>> +++ b/drivers/char/ipmi/ipmi_msghandler.c
>> @@ -1235,7 +1235,7 @@ int ipmi_create_user(unsigned int          if_num,
>>   		return -ENOMEM;
>>   
>>   	index = srcu_read_lock(&ipmi_interfaces_srcu);
>> -	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
>> +	list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
> 
> Doesn't the above line want to be something like this?
> 
> +	list_for_each_entry_srcu(intf, &ipmi_interfaces, link,
> 				 srcu_read_lock_held(&ipmi_interfaces_srcu)) {

Ouch what a mess.  There are multiple occurrences of this,
almost all susceptible to the same warning.

I'd start with:

-#define ipmi_interfaces_mutex_held() \
-	lockdep_is_held(&ipmi_interfaces_mutex)
+#define for_each_ipmi_interface(intf) \
+	list_for_each_entry_srcu(intf, &ipmi_interfaces, link,
+				 srcu_read_lock_held(&ipmi_interfaces_srcu)
+				 || lockdep_is_held(&ipmi_interfaces_mutex)) {

and use the for_each_ipmi_interface() macro throughout the file.

Here is the list... all of them are using _rcu, plus:

- ipmi_smi_watcher_register is using the wrong lockdep_is_held() assertion,
   but would warn if fixed
- ipmi_add_smi is using _rcu but otherwise correct
- ipmi_get_smi_info is using _rcu and can warn
- ipmi_timeout is using _rcu and can warn
- panic_event is using _rcu and can warn, and is also not
   using any protection around the walk.  Taking srcu_read_lock
   would be much better


On top of this, intf->users_srcu never does a synchronize_srcu, so I'm
a bit at a loss at how it is protecting the list.  The safest change
here is probably:

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f2a56c624f54..dc8936254c1b 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3769,12 +3769,12 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
  	intf->in_shutdown = true;
  	list_del_rcu(&intf->link);
  	mutex_unlock(&ipmi_interfaces_mutex);
-	synchronize_srcu(&ipmi_interfaces_srcu);
  
  	/* At this point no users can be added to the interface. */
  
  	device_remove_file(intf->si_dev, &intf->nr_msgs_devattr);
  	device_remove_file(intf->si_dev, &intf->nr_users_devattr);
+	synchronize_srcu(&ipmi_interfaces_srcu);
  
  	/*
  	 * Call all the watcher interfaces to tell them that

... plus replacing all uses of intf->users_srcu with ipmi_interfaces_srcu.


A couple more issues:

- in handle_read_event_rsp() there's a lone rcu_read_unlock()
that should become srcu_read_unlock() (currently for intf->users_srcu;
modulo changes like the above)

- while the intf->cmd_rcvrs list is protected by regular RCU,
there are many other occurrences of rcu_read_lock(), typically
followed by

         if (intf->in_shutdown) {
                 rv = -ENODEV;
                 goto out_err;
         }

and I think they should use interfaces_srcu instead.

Paolo

>>   		if (intf->intf_num == if_num)
>>   			goto found;
>>   	}
>> -- 
>> 2.48.1
>>
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
