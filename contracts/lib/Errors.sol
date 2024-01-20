// SPDX-License-Identifier: UNLICENSED
// See https://github.com/storyprotocol/protocol-contracts/blob/main/StoryProtocol-AlphaTestingAgreement-17942166.3.pdf
pragma solidity ^0.8.19;

/// @title Errors Library
/// @notice Library for all Story Protocol contract errors.
library Errors {
    ////////////////////////////////////////////////////////////////////////////
    //                               IPRecordRegistry                         //
    ////////////////////////////////////////////////////////////////////////////

    /// @notice The IP record has already been registered.
    error IPRecordRegistry_AlreadyRegistered();

    /// @notice The IP account has already been created.
    error IPRecordRegistry_IPAccountAlreadyCreated();

    /// @notice The IP record has not yet been registered.
    error IPRecordRegistry_NotYetRegistered();

    /// @notice The specified IP resolver is not valid.
    error IPRecordRegistry_ResolverInvalid();

    /// @notice Caller not authorized to perform the IP registry function call.
    error IPRecordRegistry_Unauthorized();

    ////////////////////////////////////////////////////////////////////////////
    //                                 IPResolver                            ///
    ////////////////////////////////////////////////////////////////////////////

    /// @notice The targeted IP does not yet have an IP account.
    error IPResolver_InvalidIP();

    /// @notice Caller not authorized to perform the IP resolver function call.
    error IPResolver_Unauthorized();

    ////////////////////////////////////////////////////////////////////////////
    //                            LicenseRegistry                             //
    ////////////////////////////////////////////////////////////////////////////

    /// @notice Error thrown when a policy is already set for an IP ID.
    error LicenseRegistry__PolicyAlreadySetForIpId();
    error LicenseRegistry__FrameworkNotFound();
    error LicenseRegistry__EmptyLicenseUrl();
    error LicenseRegistry__ParamVerifierLengthMismatch();
    error LicenseRegistry__InvalidParamVerifierType();
    error LicenseRegistry__PolicyNotFound();
    error LicenseRegistry__NotLicensee();
    error LicenseRegistry__ParentIdEqualThanChild();
    error LicenseRegistry__LicensorDoesntHaveThisPolicy();
    error LicenseRegistry__MintParamFailed();
    error LicenseRegistry__LinkParentParamFailed();

    ////////////////////////////////////////////////////////////////////////////
    //                             ModuleRegistry                             //
    ////////////////////////////////////////////////////////////////////////////

    error ModuleRegistry__ModuleAddressZeroAddress();
    error ModuleRegistry__ModuleAddressNotContract();
    error ModuleRegistry__ModuleAlreadyRegistered();
    error ModuleRegistry__NameEmptyString();
    error ModuleRegistry__NameAlreadyRegistered();
    error ModuleRegistry__NameDoesNotMatch();
    error ModuleRegistry__ModuleNotRegistered();

    ////////////////////////////////////////////////////////////////////////////
    //                             AccessController                           //
    ////////////////////////////////////////////////////////////////////////////

    error AccessController__IPAccountIsZeroAddress();
    error AccessController__IPAccountIsNotValid();
    error AccessController__SignerIsZeroAddress();
    error AccessController__CallerIsNotIPAccount();
    error AccessController__PermissionIsNotValid();
}