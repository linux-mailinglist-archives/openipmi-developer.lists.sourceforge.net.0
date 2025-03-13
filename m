Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72DA60078
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Mar 2025 20:05:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tsnrt-0004ia-KJ;
	Thu, 13 Mar 2025 19:05:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1tsnrs-0004iQ-D6
 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Mar 2025 19:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KAJts6qkepkcgt0enfmDrbp7FRX5Lp2lsklD1r6e6c0=; b=KZqUcgGXR2PIn7gYDOe++IzaPv
 7TjNNcyGCvYNnY0bVPN4bW6DMu6FP1uiIYx1aLWnk7kvRWO/oB/cUKzAlyjWOERb9ZhF6SGWnU4z7
 cDGli+CqcAsouGFIxa7pWCkcSKcX9ZTDEiQo62o51DTnz5XLeAXGjGTGdbi6xKNMwhNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KAJts6qkepkcgt0enfmDrbp7FRX5Lp2lsklD1r6e6c0=; b=OshZPblfudWD1gcRphaJWuKcDD
 zHU0JGw3nEjSjjcsxjjwje3VzTnRTZrDIxRC3Ratd1fbx+j1QA2GXvibh786yLSksddjR2R/tHRwW
 KobAJjvmjeizqrsQtsu+WKjAJkhL1jhc0Ul9TXN02dTeCp9iJUY8W32KEPyV3oZDL0aw=;
Received: from mgamail.intel.com ([192.198.163.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsnrp-0007dE-2i for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Mar 2025 19:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741892717; x=1773428717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iWg4hVFvyTLL0ZXRr8B9fT0VXiGOPMtR0tov4PwJgNE=;
 b=RQeABq76SvdGZB8hyN7HIa6eoXBxBYegMAZxA2XzBb/JVBGXUFkW9s2d
 MWTKEWw7x+aG9eXACeWzntk1vyAfs7Ow3f4ZPfoVaABteZ33gzQalmXtf
 aYEjmsV7FCOzY5+etPf0ylXlh3npFdjya1OCcmX00meGn5q017O26KUiU
 fH/NTZZ8zdybX5iOjs/Lrm9bBBk6+FpDJ7bdKk5AaFBuTkJfhNA9EzWTI
 rjExQ471H9SBMK4cK0VOsFKWIodYQDcdDfGxIgMcyNvrRDAC8iJyGchK+
 xY/NXAsolQEAsHsdwGhUTCzi5Q97c4otRw4tPt/NjiNhaVv78qtMJzOEz g==;
X-CSE-ConnectionGUID: jYZPztwaSfiDjHALPetCAQ==
X-CSE-MsgGUID: u1bT1ysCTsyb5nfluX8GAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42278593"
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="42278593"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 12:05:06 -0700
X-CSE-ConnectionGUID: 24YuMAPCSUyHEHtc3yh94w==
X-CSE-MsgGUID: jfo4HKpeQJGe/AaWt/Jqag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="121095565"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 13 Mar 2025 12:05:04 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tsnrZ-0009mO-37;
 Thu, 13 Mar 2025 19:05:01 +0000
Date: Fri, 14 Mar 2025 03:04:15 +0800
From: kernel test robot <lkp@intel.com>
To: Rik van Riel <riel@surriel.com>, Corey Minyard <corey@minyard.net>
Message-ID: <202503140113.cTWvIvtK-lkp@intel.com>
References: <20250312131932.44d901f7@fangorn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250312131932.44d901f7@fangorn>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rik, kernel test robot noticed the following build errors:
 [auto build test ERROR on v6.14-rc6] [also build test ERROR on linus/master
 next-20250313] [If your patch is applied to the wrong git tree, kindly drop
 us a note. And when submitting patch, we suggest [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.18 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.18 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.18 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tsnrp-0007dE-2i
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
Cc: llvm@lists.linux.dev, "Paul E. McKenney" <paulmck@kernel.org>,
 kernel-team@meta.com, linux-kernel@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Rik,

kernel test robot noticed the following build errors:

[auto build test ERROR on v6.14-rc6]
[also build test ERROR on linus/master next-20250313]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Rik-van-Riel/ipmi-fix-suspicious-RCU-usage-warning/20250313-013222
base:   v6.14-rc6
patch link:    https://lore.kernel.org/r/20250312131932.44d901f7%40fangorn
patch subject: [PATCH] ipmi: fix suspicious RCU usage warning
config: i386-randconfig-001-20250313 (https://download.01.org/0day-ci/archive/20250314/202503140113.cTWvIvtK-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250314/202503140113.cTWvIvtK-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503140113.cTWvIvtK-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/char/ipmi/ipmi_msghandler.c: In function 'ipmi_create_user':
>> drivers/char/ipmi/ipmi_msghandler.c:1238:62: error: macro "list_for_each_entry_srcu" requires 4 arguments, but only 3 given
    1238 |         list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
         |                                                              ^
   In file included from include/linux/dcache.h:8,
                    from include/linux/fs.h:8,
                    from include/linux/poll.h:10,
                    from drivers/char/ipmi/ipmi_msghandler.c:20:
   include/linux/rculist.h:455: note: macro "list_for_each_entry_srcu" defined here
     455 | #define list_for_each_entry_srcu(pos, head, member, cond)               \
         | 
>> drivers/char/ipmi/ipmi_msghandler.c:1238:9: error: 'list_for_each_entry_srcu' undeclared (first use in this function)
    1238 |         list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
         |         ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:1238:9: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/char/ipmi/ipmi_msghandler.c:1238:33: error: expected ';' before '{' token
    1238 |         list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
         |                                 ^                              ~
         |                                 ;
>> drivers/char/ipmi/ipmi_msghandler.c:1246:2: warning: label 'found' defined but not used [-Wunused-label]
    1246 |  found:
         |  ^~~~~


vim +/list_for_each_entry_srcu +1238 drivers/char/ipmi/ipmi_msghandler.c

  1203	
  1204	int ipmi_create_user(unsigned int          if_num,
  1205			     const struct ipmi_user_hndl *handler,
  1206			     void                  *handler_data,
  1207			     struct ipmi_user      **user)
  1208	{
  1209		unsigned long flags;
  1210		struct ipmi_user *new_user;
  1211		int           rv, index;
  1212		struct ipmi_smi *intf;
  1213	
  1214		/*
  1215		 * There is no module usecount here, because it's not
  1216		 * required.  Since this can only be used by and called from
  1217		 * other modules, they will implicitly use this module, and
  1218		 * thus this can't be removed unless the other modules are
  1219		 * removed.
  1220		 */
  1221	
  1222		if (handler == NULL)
  1223			return -EINVAL;
  1224	
  1225		/*
  1226		 * Make sure the driver is actually initialized, this handles
  1227		 * problems with initialization order.
  1228		 */
  1229		rv = ipmi_init_msghandler();
  1230		if (rv)
  1231			return rv;
  1232	
  1233		new_user = vzalloc(sizeof(*new_user));
  1234		if (!new_user)
  1235			return -ENOMEM;
  1236	
  1237		index = srcu_read_lock(&ipmi_interfaces_srcu);
> 1238		list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
  1239			if (intf->intf_num == if_num)
  1240				goto found;
  1241		}
  1242		/* Not found, return an error */
  1243		rv = -EINVAL;
  1244		goto out_kfree;
  1245	
> 1246	 found:
  1247		if (atomic_add_return(1, &intf->nr_users) > max_users) {
  1248			rv = -EBUSY;
  1249			goto out_kfree;
  1250		}
  1251	
  1252		INIT_WORK(&new_user->remove_work, free_user_work);
  1253	
  1254		rv = init_srcu_struct(&new_user->release_barrier);
  1255		if (rv)
  1256			goto out_kfree;
  1257	
  1258		if (!try_module_get(intf->owner)) {
  1259			rv = -ENODEV;
  1260			goto out_kfree;
  1261		}
  1262	
  1263		/* Note that each existing user holds a refcount to the interface. */
  1264		kref_get(&intf->refcount);
  1265	
  1266		atomic_set(&new_user->nr_msgs, 0);
  1267		kref_init(&new_user->refcount);
  1268		new_user->handler = handler;
  1269		new_user->handler_data = handler_data;
  1270		new_user->intf = intf;
  1271		new_user->gets_events = false;
  1272	
  1273		rcu_assign_pointer(new_user->self, new_user);
  1274		spin_lock_irqsave(&intf->seq_lock, flags);
  1275		list_add_rcu(&new_user->link, &intf->users);
  1276		spin_unlock_irqrestore(&intf->seq_lock, flags);
  1277		if (handler->ipmi_watchdog_pretimeout)
  1278			/* User wants pretimeouts, so make sure to watch for them. */
  1279			smi_add_watch(intf, IPMI_WATCH_MASK_CHECK_WATCHDOG);
  1280		srcu_read_unlock(&ipmi_interfaces_srcu, index);
  1281		*user = new_user;
  1282		return 0;
  1283	
  1284	out_kfree:
  1285		atomic_dec(&intf->nr_users);
  1286		srcu_read_unlock(&ipmi_interfaces_srcu, index);
  1287		vfree(new_user);
  1288		return rv;
  1289	}
  1290	EXPORT_SYMBOL(ipmi_create_user);
  1291	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
