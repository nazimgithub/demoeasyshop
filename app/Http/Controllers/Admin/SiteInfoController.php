<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteInfo;

class SiteInfoController extends Controller
{
    public function AllSiteInfo()
    {
    	$result = SiteInfo::get();
    	return $result;
    }

    public function GetSiteInfo()
    {
        $siteinfo = SiteInfo::find(1);
        return view('backend.site.siteinfo_update', compact('siteinfo'));
    }

    public function UpdateSiteInfo(Request $request)
    {
        $siteInfo_id = $request->id;
        SiteInfo::findOrFail($siteInfo_id)->update([
            'about'             => $request->about,
            'refund'            => $request->refund,
            'purchase_guide'    => $request->purchase_guide,
            'privacy'           => $request->privacy,
            'address'           => $request->address,
            'android_app_link'  => $request->android_app_link,
            'facebook_app_link' => $request->facebook_app_link,
            'twitter_link'      => $request->twitter_link,
            'instagram_link'    => $request->instagram_link,
            'copyright_text'    => $request->copyright_text
        ]);

        $notification = array(
            'message' => 'Site information updateed successfully!',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }
}
